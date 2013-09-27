
class Shelter
  def initialize(name)
    @name = name
    @clients = []
    @animals = []
  end
  def name
    @name
  end
  def clients
    @clients
  end
  def animals
    @animals
  end
  #---------------non initialized methods
  def list_clients
    "Here are our clients!"
   @clients.join(" | ")
  end
  def list_animals
    "Here are the pets we have:\n"
    @animals.join(" | ")
  end
  def add_client(client)
    @clients << client
  end
  def add_pet(pet)
    @animals << pet
  end
end