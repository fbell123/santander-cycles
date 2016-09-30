class Bike

  attr_reader :broken

  def initialize(broken=false)
    @broken = broken
  end

  def working?
    @broken ? false : true
  end

end
