require 'weather'
class Airport

  attr_reader :stands

  def initialize(weather = Weather.new)
    @stands = []
    @weather = weather
  end

  def instruct_landing(plane)
    raise 'Unsafe landing conditions at runway' unless runway_safe?
    @stands << plane 
  end

  def clear_takeoff(plane)
    raise 'Unsafe take off conditions at runway' unless runway_safe?
    @stands.delete(plane)
  end

  def runway_safe?
    !@weather.is_stormy?
  end
end
