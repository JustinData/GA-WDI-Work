require_relative 'person' 
#require_relative 'apartment'
#require_relative 'building'

def menu 
  puts "Hello! Welcome to a new development buildling! 
  Would you like to register as a (r)enter, create an (a)pt, 
  (l)ist the apartment building, list all (p)eople in the apt, or (q)uit ?"
  $inquirer = gets.chomp.to_s 

  case $inquirer 
    #Creating a person 
      when "r"
      puts "What is their name?"
      name = gets.chomp.to_s
      
      puts "What is their age?"
      age = gets.chomp.to_s 

      puts "What is their gender (m/f)?"
      gender = gets.chomp.to_s

      puts "What is their apartment?"
      apartment = gets.chomp.to_s  

      @person =Person.new(name, age, gender, apartment)

      @person.list_renters 
      #mary =Person.new("Mary", "35", "f", "3H")
      #samuel =Person.new("Samuel", "40", "m", "4E")
      #kelly =Person.new("Kelly", "27", "f", "5T")

      puts menu 

      #Creating an apartment 
      when "t" 
      puts "What is the price of the apt"
      price = gets.chomp.to_s

      puts "How many square feet is the apt?"
      style = gets.chomp.to_s

      puts "How many bedrooms does the apt have?"
      has_doorman = gets.chomp.to_s

      puts "How many bathrooms does the apartment have?"
      is_walkup = gets.chomp.to_s

      #@name = 
    end 

    #Creating an building 
      when "l" 
      puts "What is the address?"
      address = gets.chomp.to_s

      puts "What is the style?"
      style = gets.chomp.to_s

      puts "Does the apt have a doorman? y/n"
      has_doorman = gets.chomp.to_s

      puts "Is it is a walk_up? y/n"
      is_walkup = gets.chomp.to_s

      puts "How many floors are in your building?"
      num_floors = gets.chomp.to_s

    when "l"
      puts "What is the address?"
      address = gets.chomp.to_s

      puts "What is the style?"
      style = gets.chomp.to_s

      puts "Does the apt have a doorman? y/n"
      has_doorman = gets.chomp.to_s

      puts "Is it is a walk-up? y/n"
      is_walkup = gets.chomp.to_s

      puts "How many floors does it have?"
      num_floors = gets.chomp.to_s

      puts "Who lives there?"
      name_total = list_renters 

    end 
end 

  puts menu 

=begin 
def building_resident(person)
  puts "#{@name} is #{@age} years old, is #{@gender}, and lives in apartment #{@apartment}." 
  end 

person 1 = Person.new (name, age, gender, aparment)

puts building_resident(person1) 

def tenet 

=end 

