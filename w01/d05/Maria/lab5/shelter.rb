class Shelter

  def initialize(name)
    @name = name
    @animals = {} # create an empty animals hash
    @clients = {} # create an empty clients hash
  end

  def name
    @name
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  def show_clients
    @clients.values.join(", ")
  end

  def show_animals
    @animals.values.join(", ")
  end

  def to_s
    "#{name}! We have #{@clients.count} clients and #{@animals.count} animals "
  end
end
