class Shelter

#THESE ARE OBJECTS
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
  end

#THESE ARE METHODS

  def to_s
    return "#{@name} has #{@clients.count} clients and  #{@animals.count} animals."
  end

  def name
    @name
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

  def remove(x)
    @animals.delete(x)
  end

  # def adoption_database_reader
  #    @adoption_database
  # end
  


  # def print
  #   puts self.to_s
  # end





end