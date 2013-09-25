
#Arrays and Hashes predefine
n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

#=====================
#Start of methods

#takes in starting and ending points
def ticket(stops)
	puts "The stops on this line are:"
	puts stops
	puts " "
	puts "Please choose a starting location."
	start_location = gets.chomp.downcase
	puts "Please choose a destination."
	destination = gets.chomp.downcase
	puts " "
	locations = [start_location, destination]
end

#Captures the rail line choice
# def rail_line
# 	line_choice = gets.chomp.downcase
# end

#Determines the number of stops between two stations by array index
def stops_to_location(start_index, stop_index)
	if start_index < stop_index
		stops = stop_index - start_index
	elsif start_index > stop_index
		stops = start_index - stop_index
	else
		stops = 0
	end
end

#End of methods
#=========================

puts "Welcome to the subway!"
puts "What line is your starting location on? (N/L):"
starting_line = gets.chomp.downcase
puts "On which line is your destination? (N/L):"
destination_line = gets.chomp.downcase


locations = ticket(n)

starting_location = locations[0]
destination = locations[1]

index_of_start = n.index(starting_location)
index_of_destination = n.index(destination)


num_stops = stops_to_location(index_of_start, index_of_destination)

if num_stops != 0
	puts "Starting at #{starting_location} and getting off #{destination}"
	puts "Your trip will be #{num_stops} stops."
else
	puts "You are already there fool."
end
