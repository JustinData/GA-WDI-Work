# snakes_on_a_plane = Movie.new("Snakes on a Plane")
#jeff = Person.new("Jeff")
#jeff.watch(snakes_on_a_plane)
#=> "You are watching 'Snakes on a Plane'"

class Movie
  def initialize(title)
    @title = title
  end

  def title #this can be repalced by attr_accessor
    #"You are watching '#{@title}.'"
    @title
  end

end



class Person 
  def initialize(name, genres_enjoyed) 
    @name = name
    @genres_enjoyed = genres_enjoyed
  end

  def name #this can be repalced by attr_accessor
    @name
  end

  def genres_enjoyed
      @genres_enjoyed
  end

  def watch (movie) #this can be repalced by attr_accessor
    @watch
    if self.genres_enjoyed.member?(movie.genre)
    puts "#{name} is watching '#{movie.title}.'"
  end

end


class ScaryMovie < Movie
  def genre
      "scary"
  end

  # def title 
  #   "DON'T WATCH SCARY MOVIES, ESPECIALLY #{super}" #super allows title to be printed from parent 
  # end
end

class FishComedy < Movie

  def genre
    "fish comedy"
  end
end

snakes_on_a_plane = Movie.new("Snakes on a Plane")

puts snakes_on_a_plane.title

jeff = Person.new("Jeff")

puts jeff.name

jeff.watch(snakes_on_a_plane)

jason = ScaryMovie.new("Friday the 13th")

puts jason.title
puts jason.genre

jeff.watch(jason)