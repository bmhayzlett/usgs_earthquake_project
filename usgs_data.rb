require_relative './api_interface.rb'
require_relative './python_interface.rb'
require_relative './flinn_engdahl_regions.rb'
require_relative './region.rb'
require 'byebug'
require 'date'

class UsgsData
  include ApiInterface
  include PythonInterface

  def initialize(arg)
    if arg.options[:days]
      args = default_params_url.merge(arg.options)
    else
      args = default_summary_url.merge(arg.options)
    end
    @url = args.delete(:url)
    @params = args
    @data = nil
    process_days_back if @params[:days]
  end

  def most_dangerous_regions
    url_string = build_url
    data = fetch_data(url_string)
    if @params[:region_name] || @params[:region_number]
      return most_dangerous_sub_region(data)
    else
      return most_dangerous_super_region(data)
    end
  end

  def most_dangerous_sub_region(data)
    region_number = @params[:region_number] || FlinnEngdahl.get_region_number(@params[:region_name])
    earthquakes = data['features'][0..30]
    sub_regions = []
    earthquakes.each do |earthquake|
      lat,long = get_coords(earthquake)
      sub_region = PythonInterface.query_flinn_engdahl(lat: lat, long: long)
      if FlinnEngdahl.flinn_engdahl_sub_regions[sub_region] == region_number
        matching_region = sub_regions.find { |region| region.name == sub_region }
        if matching_region
          matching_region.add_earthquake
          matching_region.add_magnitude(earthquake['properties']['mag'])
        else
          sub_regions << Region.new(name: sub_region,
                                num_earthquakes: 1,
                                total_magnitude: earthquake['properties']['mag'])
        end
      end
    end
    sub_regions.sort_by! { |region| region.total_magnitude }
    sub_regions.reverse[0..9]
  end

  def most_dangerous_super_region(data)
    earthquakes = data['features'][0..30]
    regions = []
    earthquakes.each do |earthquake|
      lat,long = get_coords(earthquake)
      sub_region = PythonInterface.query_flinn_engdahl(lat: lat, long: long)
      super_region_num = FlinnEngdahl.flinn_engdahl_sub_regions[sub_region.upcase]
      super_region_name = FlinnEngdahl.flinn_engdahl_seismic_regions[super_region_num][:name]
      matching_region = regions.find { |region| region.name == super_region_name}
      if matching_region
        matching_region.add_earthquake
        matching_region.add_magnitude(earthquake['properties']['mag'])
      else
        regions << Region.new(name: super_region_name,
                              num_earthquakes: 1,
                              total_magnitude: earthquake['properties']['mag'])
      end
    end
    regions.sort_by! { |region| region.total_magnitude }
    regions.reverse[0..9]
  end

  def get_coords(earthquake)
    long = earthquake['geometry']['coordinates'][0]
    lat = earthquake['geometry']['coordinates'][1]
    [lat,long]
  end

  def process_days_back
    num_days = @params.delete(:days)
    today = Date.today
    start_date = today - num_days
    @params['starttime'] = start_date.strftime('%Y-%m-%d')
  end

  def build_url
    built_url = @url
    @params.each do |key, value|
      if key != :region_name && key != :region_number
        built_url += "#{key.to_s}=#{value}&"
      end
    end
    built_url.chop! if built_url[-1] == '&'
    built_url
  end

  def fetch_data(url)
    ApiInterface.make_get_request(url)
  end

  def default_summary_url
    {:url => 'http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson'}
  end

  def default_params_url
    {:url => 'http://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&'}
  end

end
