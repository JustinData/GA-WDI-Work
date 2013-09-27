
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
   @clients.join(" | ")
  end
  def list_animals
    @animals.join(" | ")
  end
  def add_client(client)
    @clients << client
  end
  def add_pet(pet)
    @animals << pet
  end
end