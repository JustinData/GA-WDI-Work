require './person.rb'
require './apartment.rb'
require './building.rb'

def apartment_exist?(apartment)
	$building.apartments.keys.include?(apartment.to_sym)
end

def person_input
	puts "In order, what is the name, age, gender, and apartment (like this: apt#) of this person?"
	@person = gets.chomp.scan(/\w+/)
end

def menu
	puts "What would you like to do: create (p)erson, create (a)partment, (l)ist apartments, (lp) list people in single apartment, or (q)uit?"
	gets.chomp.downcase
end

def error_msg
	"Not valid option. Choose again."
end

def create_apartment_y_or_n
	puts "Hey, the apartment you specified doesn't exist yet"
	puts "Do you wanna create it and add the person to it? Yes or No?"
	gets.chomp.downcase[0]
end

def add_apartment(apartment_name, price, sqft, num_beds, num_baths, renters)
	$building.apartments[apartment_name.to_sym] = Apartment.new(apartment_name, price, sqft, num_beds, num_baths, [])
end

def add_person(person_name, age, gender, apartment_name)
	$building.apartments[apartment_name.to_sym].renters << Person.new(person_name, age.to_i, gender, apartment_name)
end

#create building / start
$building = Building.new("2109 Broadway", "Parisian", true, false, 16, {} )

#present menu of choices
choice = menu
#loop until user decides to quit
until choice == 'q'
	case choice
	#create person
	when 'p'

		#get person to initialize
			#ask user for necessary input
			info = person_input

			#if apartment exists
			if apartment_exist?(@person[3])
				#add to existing apartment
				add_person(@person[0], @person[1].to_i, @person[2][0], @person[3].to_sym)
			else 
				person_copy = info

				#create another apartment?
				decision = create_apartment_y_or_n
				case decision
				when 'y'
					puts "In order state: price, sqft, number of beds, and number of baths"
					apt_input = gets.chomp.scan(/\w+/).map { |n| n.to_i }
					
					#create vacant apartment to existing building
					add_apartment(person_copy[3] , apt_input[0], apt_input[1], apt_input[2], apt_input[3], [])

					#add person to created apartment
					add_person(@person[0], @person[1].to_i, @person[2][0], @person[3].to_sym)
				when 'n'
					puts "Then re-enter your info"
					puts "In order, what is the name, age, gender, and apartment (like this: apt#) of this person?"
					@person = gets.chomp.scan(/\w+/)
				else
					puts error_msg
					decision = create_apartment_y_or_n
				end
			end

	#create apartment
	when 'a'
		puts "In order state: name (like this apt#), price, sqft, number of beds, and number of baths"
		#NOTE: this apt_input indexes diff than one above
		apt_input = gets.chomp
		apt_input = apt_input.scan(/\w+/).map! { |e| apt_input[e] == apt_input.scan(/\w+/).first ? e : e.to_i }
		
		#while specified apartment exist
		while apartment_exist?(apt_input[0].to_sym)
			#ask user to rename choice
			puts "Sorry. That apartment already exists. Provide another choice."
			puts "In order state: name (like this apt#), price, sqft, number of beds, and number of baths"
			apt_input = gets.chomp
			apt_input = apt_input.scan(/\w+/).map! { |e| apt_input[e] == apt_input.scan(/\w+/).first ? e : e.to_i }
		end
		#make vacant apartment
		add_apartment(apt_input[0], apt_input[1], apt_input[2], apt_input[3], apt_input[4], [])
	#list apartments in building
	when 'l' 
		puts "All apartments in building:"
		$building.list_apartments
	#list people in given apartment in building
	when 'lp'
		$building.apartments.values.each { |apt| puts apt.list_renters }
	else
		puts error_msg
		choice = menu
	end

	choice = menu
end