class Elevator
  def initialize
    @floors = ["f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10"]
    @direction = "up"
    @floor = @floors[0]
  end

  def floors
    @floors
  end

  def direction
    @direction
  end

  def floor
    @floor 
  end

  def trip(start_floor, end_floor)
    if start_floor == 'f1'
      @direction = "up"
      @floor = @floors[@floors.index(end_floor)]
    end
  end



end
