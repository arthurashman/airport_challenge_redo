class Airport
  def initialize
    @stands = []
  end

  def instruct_landing(plane)
    @stands << plane 
  end

  def clear_takeoff(plane)
  end
end
