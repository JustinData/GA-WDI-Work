require './person.rb'
require './apartment.rb'
require './building.rb'

#methods
def apartment_exist?(apartment)
	$building.apartments.keys.include?(apartment.to_sym)
end

def apartment_input
end

def person_input
	puts "In order, what is the name, age, gender, and apartment (like this: apt#) of this person?"
	@person = gets.chomp.scan(/\w+/)
end

def menu
	puts "What would you like to do: create (p)erson, create (a)partment, (l)ist apartments, (lp) list people in single apartment, or (q)uit?"
	gets.chomp.downcase
end

def add_building
end

def add_person
end

#create building
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
				$building.apartments[@person[3].to_sym].renters << Person.new(@person[0], @person[1].to_i, @person[2][0], @person[3].to_sym)
			else 
				person_copy = info

				puts "Hey, the apartment you specified doesn't exist yet"
				puts "Do you wanna create it and add the person to it?"
				decision = gets.chomp.downcase[0]
				case decision
				when 'y'
					puts "In order state: price, sqft, number of beds, and number of baths"
					apt_input = gets.chomp.scan(/\w+/).map { |n| n.to_i }
					
					#create vacant apartment to existing building
					$building.apartments[person_copy[3].to_sym] = Apartment.new(person_copy[3] , apt_input[0], apt_input[1], apt_input[2], apt_input[3], [])
					#add person to created apartment
					$building.apartments[person_copy[3].to_sym].renters << Person.new(person_copy[0], person_copy[1].to_i, person_copy[2][0], person_copy[3].to_sym)
					puts $building.apartments
				else # 'n'
					puts "Provide your input again"
					puts "In order, what is the name, age, gender, and apartment (like this: apt#) of this person?"
					@person = gets.chomp.scan(/\w+/)
				end
			end

	#create apartment
	when 'a'
		puts "In order state: name (like this apt#), price, sqft, number of beds, and number of baths"
		#note: this apt_input indexes diff than one above
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
		$building.apartments[apt_input[0].to_sym] = Apartment.new(apt_input[0] , apt_input[1], apt_input[2], apt_input[3], apt_input[4], [])
	#list apartments in building
	when 'l' 
		puts "All apartments in building"
		$building.list_apartments
	#list people in given apartment in building
	when 'lp'
		$building.apartments.values.each { |apt| puts apt.list_renters }
	else
		puts "Not valid option. Choose again."
		choice = menu
	end

	choice = menu
end