class Calculator

  def add (x, y)
    x+y
  end

  def subtract (x, y)
    x-y
  end

  def sum (array)
    sum = array.reduce(:+)
    if sum == nil
      sum = 0
    end
  end

  def multiply (array)
    array.inject(:*)
  end

  def power(x,y)
    x**y
  end


  
end