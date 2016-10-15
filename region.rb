class Region
  attr_reader :name, :num_earthquakes, :total_magnitude

  def initialize(args)
    @name = args[:name]
    @num_earthquakes = args.fetch(:num_earthquakes, 0)
    @total_magnitude = args.fetch(:total_magnitude, 0)
  end

  def add_magnitude(magnitude)
    magnitude_adder = 10 ** magnitude
    total_adder = 10 ** @total_magnitude
    @total_magnitude = Math.log10(magnitude_adder + total_adder)
  end

  def add_earthquake
    @num_earthquakes += 1
  end
end
