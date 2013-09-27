class Apartment 
  attr_accessors :price, :is_occupied, :sqft, :num_beds, :num_baths 

  def initialize(price, is_occupied, sqft, num_beds, num_baths)
    @price = price
    @is_occupied = is_occupied 
    @sqft = sqft
    @num_beds = num_beds 
    @num_baths = num_baths
    @renters = [] 
  end 

    def list_renters  
      @person << @renters 
    end 

end 