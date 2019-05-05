class Airport

  attr_reader :stands

  def initialize
    @stands = []
  end

  def instruct_landing(plane)
    @stands << plane 
  end

  def clear_takeoff(plane)
    @stands.delete(plane)
  end
end
