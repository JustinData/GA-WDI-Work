class Building
  attr_accessor :building_name

  def initialize(param1)
    @building_name = param1
  end

  def to_s
    @building_name.to_s
  end

end