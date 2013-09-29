class Animal

  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = toys
    # @adopted_pet = []
  end

 def name
    @name
  end

  def to_s
    return "#{@name}, #{@species}. Toy(s): #{@toys}"
  end

  def species
    @species
  end

  def toys
    @toys
  end

  # def adopted_pet
  #   @adopted_pet
  # end

end


##  a.delete("PJ") #here, if you want to do something with the item you delete, then have to save it in a new variable, i.e. 
## person_deleted = a.delete("PJ") then call on person_deleted and you'll see all the ones that were deleted.






