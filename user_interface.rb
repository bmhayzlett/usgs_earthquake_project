require 'byebug'
require_relative './flinn_engdahl_regions.rb'
require_relative './usgs_data.rb'


class UserInterface
  attr_reader :options

  def initialize
    @exit = false
    @message = nil
    @options = {}
  end

  def run
    until @exit
      puts_messages
      puts_commands
      command = gets.chomp
      handle_command(command)
    end
    system('clear')
    puts 'Thanks for reviewing my application!'
  end

  def handle_command(command)
    case command
    when 'exit'
      @exit = true
      return
    when 'most-dangerous-regions'
      reset_options
    when 'most-dangerous-regions --days'
      request_days
    when 'most-dangerous-regions --region'
      request_region
    when 'most-dangerous-regions --days --region'
      request_days
      request_region
    else
      @message = 'Invalid command. Please input new command'
    end
    usgs_data = UsgsData.new(self)
    most_dangerous_regions = usgs_data.most_dangerous_regions
    build_chart(most_dangerous_regions)
    reset_options
  end

  def build_chart(data)
      puts 'region                   |earthquake count|total magnitude'
      puts '__________________________________________________________'
    data.each do |entry|
      reg = entry.name[0..21]
      while reg.length <= 21
        reg += ' '
      end
      reg_buf = "...|"
      cnt = '  ' + entry.num_earthquakes.to_s
      cnt_buf_num = 16 - cnt.length
      cnt_buf = ''
      cnt_buf_num.times {cnt_buf += ' '}
      cnt_buf += '|'
      mgt = entry.total_magnitude.to_s[0..14]
      puts reg + reg_buf + cnt + cnt_buf + mgt
    end

    puts ''
    puts 'exit? y/n'
    choice = gets.chomp
    @exit = true if choice == 'y'

  end

  def request_days
    puts_messages
    puts 'Please input number of days back from today for which you want data'
    puts 'Note: maximum input is 30 and minimum input is 1'
    days = gets.chomp.to_i

    if days <= 0 || days > 30
      @message = 'Please pick a number between 1 and 30!'
      request_days
    else
      @options[:days] = days
    end
  end

  def request_region
    puts_messages
    puts 'Please enter the region number (1-50) or the region name'
    puts 'Note: region name must be exactly as it appears on usgs website,'
    puts 'except for the region 40 typo -> northeastern is corrected'
    request = gets.chomp

    entry_type = FlinnEngdahl.entry_type(request)
    if entry_type
      @options.merge!(entry_type)
    else
      @message = 'Please enter a valid region'
      request_region
    end
  end

  def puts_messages
    system('clear')
    puts @message if @message
    reset_message
  end

  def puts_commands
    puts 'Available commands:'
    puts 'exit: exits program'
    puts 'most-dangerous-regions: outputs most dangerous seismic regions'
    puts 'most-dangerous-regions --days: allows addition of days filter'
    puts 'most-dangerous-regions --region: allows filtering by super-region'
    puts 'most-dangerous-regions --days --region: allows filtering by days and super-region'
    puts 'Please type command and hit "Enter"'
  end

  def reset_message
    @message = nil
  end

  def reset_options
    @options = {}
  end
end

interface = UserInterface.new
interface.run
