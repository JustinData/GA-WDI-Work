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

     def to_s
           "The Apartment is #{@apt_sqft}, with #{apt_beds} and #{apt_baths}.  The apartment costs #{@apt_price}. \nOccupied: #{@apt_occ} "
      end
  
      def add_renter(person)
            @renters.push(person)
      end

      def list_renters
        puts "#{@renters}"
      end

    def to_s
                    "The building has #{}"
    end

end 