class Building  
  attr_accessors :address, :style, :has_doorman, :is_walkup, :num_floors

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style 
    @has_doorman = has_doorman
    @is_walkup = is_walkup 
    @num_floors = num_floors
    @names_total = []
  end 

  def list_apartments 
    
  end 

end 