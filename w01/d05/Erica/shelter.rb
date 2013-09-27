# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print a shelter to a string, it should tell us about its name, the number of clients, and the number of animals.
class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  # animals in the shelter.
  def animals(pet)
    @animals.push(pet)
  end

  # clients of the shelter
  def clients(client)
    @clients.push(client)
  end

  def animals_list 
    @animals.join
  end

  def clients_list
    @clients.join("|")
  end

  def adoption
    
  end

  # print a shelter to a string
  def to_s
   puts "#{@name.capitalize} has #{@clients.size} clients #{@clients.join(", ")} and #{@animals.size} animals: #{@animals.join(" , ")}."
  end
end

shelter1 = Shelter.new("Erica's Crib")
shelter1.clients("abby")
shelter1.clients("billy")
shelter1.clients_list
shelter1.to_s





