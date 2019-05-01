class Airport
  def initialize
    @stands = []
  end
  def instruct_landing(plane)
    @stands << plane 
  end
end
