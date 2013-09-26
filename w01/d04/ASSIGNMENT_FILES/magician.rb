
#this will give symbols that are values and names that are strings
person1 = {name: "David Copperfield", hometown: "Metuchen"}
person2 = {name: "Syphilis Rivendell", hometown: "Brooklyn"}
dog = {name: "Sparky", hometown: "Manhattan"}

# puts "Do you mean person1 or person2?"
# persons_name = gets.chomp.downcase
#this is how you do it with a puts statement
# puts "Oh, #{person1[:name]} is from #{person1 [:hometown].}"

 #this is how you do it with a Method
def say_persons_name (person)
 	puts "Oh, #{person[:name]} is from #{person[:hometown]}."
end

def say_dogs_name(dog)
	puts "Woof"
	puts "#{dog[:name]}"
	puts "Woof"
end

def do_magic(person)
	puts "#{person [:name]} is doing magic!"
end

# the above doesn't work unless you CALL THE M
say_persons_name(person1)
say_dogs_name(dog)
do_magic(person1)

#SO we define the variables up top. THen we define "say_person_name" etc as an action, and we put the PARAMETER in (person, dog, person), which is then used
##in the puts statement. Then you CALL that Action say_persons_name(person1) and define which variable you are using. 