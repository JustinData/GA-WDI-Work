require './animal'
require './client'
require './shelter'
<<<<<<< HEAD
=======
require './seed.rb'
>>>>>>> master

#NOTES##########################################################

#distinction bet pets and shelter animals

#later adjust for multiple shelters:
	#methods
	#variables
	#add another client param specifying shelter
	#exist? statement outside current structure for add shelter

	#create hash in Self scope
	#of shelters
	#hash <- shelters <- clients <- animals

	#take animal from Shelter array and add to Client array

#methods##########################################################

def menu
<<<<<<< HEAD
	puts "What would you like to do manneeeeeee: create (a)nimal, (c)lient, or (q)uit?"
=======
	puts "What would you like to do manneeeeeee: create (a)nimal, (c)lient,\n (da) display all animals, (dc) display all clients, (ad)opt an animal, or (q)uit?"
>>>>>>> master
	gets.chomp.downcase
end

def error_msg
	"Not valid option. Choose again."
end

#change input into individual enters
def get_animal_input
	puts "In order state: name, client, and species"
	@animal_input = gets.chomp.scan(/\w+/)
end

#change input into individual enters
def get_client_input
	puts "In order state: name then age"
	@client_input = gets.chomp.scan(/\w+/)
end

<<<<<<< HEAD
=======
def get_adoption_input
	puts "Which animal and which client?"
	@adoption_input = gets.chomp.scan(/\w+/)
end

>>>>>>> master
def client_exist?(client_instance)
	$shelter1.clients.include?(client_instance.to_sym)
end

<<<<<<< HEAD
=======
def animal_exist?(client, animal)
	client.animals.values.include?(animal.to_sym)
end

>>>>>>> master
def y_or_n_create_client
	puts "That client doesn't exist."
	puts "Do you want to create him/her then add the animal to him/her? (y)es or (n)o?"
	gets.chomp.downcase[0]
end

def add_animal(name, client_instance, species)
<<<<<<< HEAD
	$shelter1.clients[client_instance.to_sym].animals << Animal.new(name, client_instance, species)
=======
	$shelter1.clients[client_instance.to_sym].animals[name.to_sym] = Animal.new(name, client_instance, species)
>>>>>>> master
end

def add_client(name, age)
	$shelter1.clients[name.to_sym] = Client.new(name, age)
end

#################################################################

<<<<<<< HEAD
#create new shelter #available to ../ of instances of Self scope
$shelter1 = Shelter.new("shelter1")

=======
>>>>>>> master
choice = menu
#menu loop
until choice == 'q'
	#display menu options
	case choice
	#1 create animal
	when 'a'
		#animal input
		get_animal_input
		#does client specified / owner exist? yes
<<<<<<< HEAD
=======

>>>>>>> master
		if client_exist?(@animal_input[1])	
			#add animal to specified client
			add_animal(@animal_input[0], @animal_input[1], @animal_input[2])
		else

<<<<<<< HEAD

			#create? yes or no loop
			decision = y_or_n_create_client
			until (decision == 'y') || (decision == 'n')
				#do you want to create client and add animal?
				case decision
				when 'y'
					#create client
					get_client_input
					add_client(@client_input[0], @client_input[1])

					#add animal to created client
					p add_animal(@animal_input[0], @animal_input[1], @animal_input[2])
				#no
				when 'n'
					puts "no"
					#reprompt for (animal input)
					puts "Please re-provide input"
				else
					#reprompt for (yes or no loop)
					puts error_msg
					decision = y_or_n_create_client
				end
			end

=======
			#create? yes or no loop
			decision = y_or_n_create_client					
				until decision == 'n'
					#do you want to create client and add animal?
					case decision
					when 'y'
						get_client_input
						#create client
						add_client(@client_input[0], @client_input[1])
						
						#add animal to created client
						add_animal(@animal_input[0], @animal_input[1], @animal_input[2])
						puts "animal added to create client"
						break
					#no
					else
						#reprompt for (yes or no loop)
						puts error_msg
						decision = y_or_n_create_client
					end		
				end
>>>>>>> master
		end

	#2 create client
	when 'c'
		#client input
<<<<<<< HEAD
		puts "Creating client"
		#does client exist? yes
			#reprompt (client input)
		#no
			#create client
		#else
			#reprompt client input
		#end
	
=======
		get_client_input
		#does client exist? yes
		if client_exist?(@client_input[0])
			#reprompt (client input)
			puts "Sorry, but that client already exists"
		#no
		else
			#create client
			puts "creating client"
			add_client(@client_input[0], @client_input[1])
		end
	
	#3 display all animals
	when 'da'
		puts 'Displaying all shelter animals'
		$shelter1.list_animals

	#4 display all clients
	when 'dc'
		puts "Display all clients"
		$shelter1.list_clients


	when 'ad'
		get_adoption_input

		if client_exist?(@adoption_input[1])
		#facilitate adoption
		$shelter1.facilitate_adoption(@adoption_input[0], @adoption_input[1])
		else
			puts "That client does not exist"
		end

	when 'p'
		get_adoption_input

		if client_exist?(@adoption_input[1])
		
			if animal_exist?(@adoption_input[1], @adoption_input[0])
				#facilitate putting up
				$shelter1.facilitate_put_up(@adoption_input[0], @adoption_input[1])
			else
				puts "That animal does not exist"
			end

		else
			puts "That client does not exist"
		end

>>>>>>> master
	#else error message
	else
		puts error_msg
		choice = menu
	end

	#reprompt for menu input
	choice = menu
end