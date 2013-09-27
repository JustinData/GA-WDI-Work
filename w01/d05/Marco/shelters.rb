require './animals.rb'
require './clients.rb'

class Shelter

  def initialize (name)
      @name = name
      @adoption = adoption
      @pet_return = pet_return
    end

    #creates instance variable for shelter
    def name 
      @name
    end

    #creates instance variable for shelter
    def adoption
      @adoption
    end

    def shelter_clients

    end

    def shelter_pets

    end

    #creates instance variable for shelter
    def pet_return
      @pet_return
    end

    def to_s
      #{}"#{name} has #{shelter_clients.length} clients and #{shelter_animals.length} animals."
    end

end

################ SHELTER END ##################