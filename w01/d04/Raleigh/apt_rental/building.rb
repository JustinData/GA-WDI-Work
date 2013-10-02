### Building Class ###

class Building
<<<<<<< HEAD
    attr_accessor :address, :style, :has_doorman,  :is_walkup, :num_floors
=======
    attr_accessor :address, :style, :has_doorman,  :is_walkup, :num_floors, :apartments
>>>>>>> master

   def initialize(address, style, doorman, walkup, floors)
      @address = address
      @style = style
      @has_doorman = doorman
      @is_walkup = walkup
      @num_floors = floors
      @apartments = {}
   end

<<<<<<< HEAD
   # I don't understand how this is working
   def add_apt(apt_name, apt_objects)
      added_apt = {apt_name => apt_objects}
      # binding.pry
=======
   def add_apt(apt_name, apt_objects)
      added_apt = {apt_name => apt_objects}
>>>>>>> master
      @apartments.merge!(added_apt)
   end 

   def list_apartments
<<<<<<< HEAD
      puts "Appartments: #{@apartments.to_a.join(" ")}"
=======
      puts "Total appartments in building: #{@apartments.to_a.join(" ")}"
>>>>>>> master
   end

   def to_s
      if @has_doorman == "yes" && @is_walkup == "yes"
         "The building is located at #{@address}.It is a #{@num_floors} walkup with a doorman. The building is done in the #{@style} style."
      elsif @has_doorman == "yes" && @is_walkup == "no"
         "The building is located at #{@address}.It has #{@num_floors} floors with a doorman. The building is done in the #{@style} style."
      elsif @has_doorman == "no" && @is_walkup == "yes"
         "The building is located at #{@address}.It is a #{@num_floors} walkup with no doorman. The building is done in the #{@style} style."
      else
         "The building is located at #{@address}.It has #{@num_floors} floors and no doorman. The building is done in the #{@style} style."
      end
   end

end