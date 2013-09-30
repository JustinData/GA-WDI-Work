Ruby Modules

talked about classes

class Person
  def say
  end
end

class Child < Person
  def play
  end
end

so the methods in the Child responds to the say and the play
the Person only say.

Respods to :

1. implemented by class

2. Impemented by parents

3. Implemented in Modules

4. Included by parents

A second use of Modules (a way to group behavior):

classes what is unique is that we instantiate classes to a particular instance.
has data and behavior
so in computer class it tracks name and make also borrowed and borrowed_by.
behavior is we can ask it computer, what is you make..computer boot.

there are times when we have behavior without data.
So models can be a collection of similar behavior.

A method you can call on the class occurs if you define a method on the class itseld
by doing self. inside the def (see math.rb)

def self.humanity you would see ::humanity
end

def say you would see #say
end

people = ["Jeff", "Barney the dinasaur", "Joseph(dreamcoat)"]
# now to print all the stuff in the array :
people.each do |name|
  puts name
end

Now go see enum.rb file



























