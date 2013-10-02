### Apartment Class ###

class Apartment
    attr_accessor :price, :is_occupied, :sqft,  :num_beds, :num_baths, :renters

   def initialize(price, occupied, sqft, beds, baths)
      @price = price.to_f
      @is_occupied = occupied
      @sqft = sqft
      @num_beds = beds
      @num_baths = baths
      @renters = []
   end

   def add_renter(person)
<<<<<<< HEAD
      @renters.push(person)
   end
      
   def list_renters(search)
      puts "Renters: #{@renters["search"].join(", ")}"
=======
      if @is_occupied == "yes"
         @renters.push(person)
      end
   end
      
   def list_renters
      puts "Renters:"
      @renters.each{|renter| puts renter}
>>>>>>> master
   end

   def to_s
      if @is_occupied == "yes"
<<<<<<< HEAD
      "(The apartment is $#{@price}. The apartment has #{@num_beds}, #{@num_baths}, and is #{@sqft} square feet. OCCUPIED), "
      else
      "(The apartment is $#{@price}. It is not occupied. The apartment has #{@num_beds}, #{@num_baths}, and is #{@sqft} square feet. NOT OCCUPIED), "
=======
      "(The apartment is $#{@price}. The apartment has #{@num_beds} bedroom(s), #{@num_baths} bathroom(s), and is #{@sqft} square feet. OCCUPIED), "
      else
      "(The apartment is $#{@price}. It is not occupied. The apartment has #{@num_beds} bedroom(s), #{@num_baths} bathroom(s), and is #{@sqft} square feet. NOT OCCUPIED), "
>>>>>>> master
      end
   end

end
