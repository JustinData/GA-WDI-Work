
def menu 
  puts "Hello! Welcome to a new development buildling! 
  Would you like to register as a (r)enter, create an (a)pt, 
  (l)ist an apt, list all (p) in the apt, or (q)uit ?"
  $inquirer = gets.chomp.to_s 
end 

class Person 
  attr_accessor :name, :age, :gender, :apartment 

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age 
    @gender = gender 
    @apartment = apartment 
  end  
end 
  #def apartmenter_setter << @renters 

class Apartment 
  attr_accessors :price, :is_occupied, :sqft, :num_beds, :num_baths 

  def initialize(price, is_occupied, sqft, num_beds, num_baths)
    @price = price
    @is_occupied = is_occupied 
    @sqft = sqft
    @num_beds = num_beds 
    @num_baths = num_baths
    #@renters = [] 
  end 
end 
  
class Building  
  attr_accessors :address, :style, :has_doorman, :is_walkup, :num_floors

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style 
    @has_doorman = has_doorman
    @is_walkup = is_walkup 
    @num_floors = num_floors
    @names_total = []
  end 
end 

 

#########################PROGRAM STARTS 

puts menu 

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

      @person = Person.new(name, age, gender, apartment)
    end 