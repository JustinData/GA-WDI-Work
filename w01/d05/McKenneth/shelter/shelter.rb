class Shelter
  def initialize(name, clients, animals)
    @name = name
    @clients = clients
    @animals = animals
  end
  def name
    @name
  end
  def clients
    @clients
  end
  def animal
    @animal
  end
  #---------------non initialized methods
  def list_clients
    puts @clients.join(" | ")
  end
  def list_animals
    puts @animals.join(" | ")
  end
  def add_client(name, age, pets)
    @clients << [name, age, pets]
  end
end