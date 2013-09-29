#require "pry"

class Shelter

#THESE ARE OBJECTS
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
    @adopted_pet = []
  end

#THESE ARE METHODS

  def to_s
    return "#{@name} has #{@clients.count} clients and  #{@animals.count} animals."
  end

  def name
    @name
  end

  def adopted_pet
    @adopted_pet
  end

  def delete_pet(x)
    @animals.delete(x)
  end

  def clients
    @clients
  end

  def adoptables_list
    @animals.values.join("\n")
  end 

  def animals
    @animals
  end

   def current_clients
    @clients.values.join("\n")
   end

end



