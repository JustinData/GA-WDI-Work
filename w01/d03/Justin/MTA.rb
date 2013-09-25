
#Arrays and Hashes predefine
n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
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



#End of methods
#=========================
puts "Welcome to the N Line."
puts " "
locations = ticket(n)

starting_location = locations[0]
destination = locations[1]

index_of_start = n.index(starting_location)
index_of_destination = n.index(destination)

if index_of_start < index_of_destination
	num_stops = index_of_destination - index_of_start
elsif index_of_start > index_of_destination
	num_stops = index_of_start - index_of_destination
else
	num_stops = 0	
end

if num_stops != 0
	puts "Starting at #{starting_location} and getting off #{destination}"
	puts "Your trip will be #{num_stops}."
else
	puts "You are already there fool."
end
