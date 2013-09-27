class Person 
  attr_accessor :name, :age, :gender, :apartment 

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age 
    @gender = gender 
    @apartment = apartment 
  end 
end 

puts "Hello! Welcome to a new development buildling! 
  Would you like to register as a (r)enter, create an (a)pt, 
  (l)ist an apt, list all (p) in the apt, or (q)uit ?"
  inquirer = gets.chomp.to_s 

  case inquirer 
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
    end 

    @person = Person.new(name, age, gender, apartment)
    
    puts @person.list_renters 

      


