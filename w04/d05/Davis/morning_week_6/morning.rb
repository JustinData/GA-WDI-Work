class WaterBottle
  attr_accessor :empty

  def initialize(empty = true)
    @empty = empty
  end

  def drink
    empty ? "Bottle is empty" : "MMMM, nice water"
  end

  def fill
    self.empty = empty ? false : true
  end

  def full?
    empty
  end
end


water = WaterBottle.new(true)

p water.drink
p water.fill
p water.drink