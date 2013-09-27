require_relative 'person'
require_relative 'building'
require_relative 'apartment'

#defines method for creating an instance of a person

def new_building
  puts "First things first: we need to create a new building!"
  puts " "
  puts "What's the address of the building?"
  puts "Address : "
  address = gets.chomp
  puts "What's the style?"
  style = gets.chomp
  puts "Does it have a doorman? (y or n)"
  has_doorman = gets.chomp.downcase
  puts "Is it a walkup? (y or n)"
  is_walkup = gets.chomp.downcase
  puts "How many floors are there?"
  num_floors = gets.chomp

  $b = Building.new(address, style, has_doorman, is_walkup, num_floors, apts = {})

  puts "Great! building added with the following information : "
  $b.to_s

end

def new_person(apt_name = 0)

  #gathers input from user

  puts "Name : "
  name = gets.chomp
  puts "Age : "
  age = gets.chomp
  puts "Gender : (m or f)"
  gender = gets.chomp

  #checks to see if an instance of a person is created within the new_apt method

  if apt_name == 0
    puts "Apartment : "
    apt_name = gets.chomp
  end

  #if apt exists, adds new instance of person to that apartment

  if $b.apts.keys.include?(apt_name.to_sym)
    $b.apts[apt_name.to_sym].renters << Person.new(name, age, gender, apt_name)

  #if apt doesn't exist, prompts user to create a new apartment then adds that person to apartment

  else
    puts "Looks like that apartment isn't in the system. Create it now: "
    puts " "
    new_apt
    $b.apts[apt_name.to_sym].renters << Person.new(name, age, gender, apt_name)
  end

  #updates the apartment name of the person

  $b.apts[apt_name.to_sym].renters.last.apartment = apt_name

  puts "Great! A person has been added to the system with the following information : "
  $b.apts[apt_name.to_sym].renters.last.to_s
  puts " "
  rental_app(1)
end

#defines method for creating an instance of an apartment

def new_apt

    #prompts user for input

    puts "What's the name of the apartment?"
    apartment = gets.chomp
    puts "What's the price?"
    price = gets.chomp
    puts "What's the square footage?"
    sqft = gets.chomp
    puts "How many beds does it have?"
    num_beds = gets.chomp
    puts "How many bathrooms does it have?"
    num_baths = gets.chomp

    #if apartment exists, ends method

    if $b.apts.keys.include?(apartment.to_sym)
      puts "That apartment already exists!"

    #if not, adds apartment to apts hash

    else
      $b.apts[apartment.to_sym] = Apartment.new(price, sqft, num_beds, num_baths)
    end

      puts "Here is the information on apartment #{apartment} : "
      $b.apts[apartment.to_sym].to_s

    #creates a person (or people) who is/are automatically added the apartment's renters

      puts " "
      puts "Here are your options:"
      puts " "
      puts "1: Add renter to this apartment."
      puts "2: Return to the main menu."
      puts " "
      puts "What would you like to do?"
      choice = gets.chomp
      until choice == '1' || choice == '2'
        puts "That's not a valid reponse. Type 1 or 2:"
        choice = gets.chomp
      end
      if choice == '1'
        new_person(apartment.to_sym)
      end
      puts " "
      rental_app(1)
end

def options
  puts "Here are your options:"
  puts " "
  puts "1 : Create a new apartment."
  puts "2 : Create a new person."
  puts "3 : List all appartments in your building."
  puts "4 : List all the people in an apartment."
  puts "5 : Quit"
  puts " "
  puts "What would you like to? (Type a number)"
end


############# Rental app begins #################
def rental_app(exit = 0)
  if exit == 0
    "Welcome to your Rental Management Sytem!"
    new_building
    puts " "
  end
  options
  possible_choices = ['1', '2', '3', '4', 'q']
  selection = gets.chomp
  until possible_choices.include?(selection)
    puts "That's not a valid response! Please try again."
    puts " "
    options
    selection =gets.chomp
  end
  case selection
    when "1"
      new_apt
    when "2"
      new_person
    when "3"
      $b.list_apartments
      puts " "
      rental_app(1)
    when "4"
      puts "What apartment?"
      query = gets.chomp.to_sym
      until $b.apts.keys.include?(query)
        puts "Woops! Looks like that apartment doesn't exist. Try another one :"
        query = gets.chomp.to_sym
      end
      puts "RENTERS IN #{query.to_s.upcase} :"
      $b.apts[query].list_renters
      puts " "
      rental_app(1)
    when "q"
      puts "Goodbye!"
  end
end

rental_app







