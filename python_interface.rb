module PythonInterface

  def self.query_flinn_engdahl(coords)
    lat = coords[:lat]
    long = coords[:long]
    result = `python obspy_lib.py #{lat} #{long}`
    result.chomp
  end

end
