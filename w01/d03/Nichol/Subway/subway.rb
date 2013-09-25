
line_n = ["ts", "34", "28", "23", "us", "8"]
line_l = ["8th", "6th", "us", "3rd", "1st"]

mta = {}
mta[:n] = line_n
mta[:l] = line_l

def verify_station(line)
	#TODO verify that the station is on line.
	#return boolean
end

def print_subway_line(line)
	print line
end

def get_start_station(line)
	puts "Where do you start?"
	gets.chomp.downcase
end

def get_finish_station(line)
	puts "Where are you going?"
	gets.chomp.downcase
end

def get_start_line(system)
	puts ("What line are you taking?")
	gets.chomp.downcase
end

def get_finish_line(system)
	puts ("What line are you ending on?")
	gets.chomp.downcase
end

def find_position_in_array(station, line)
	position = 0
	while line[position] != station
		position += 1
	end
	return position
end

def print

def calculate_trip_length(start_station, start_line, finish_station, finish_line)
	
	dist1 = find_position_in_array(start_station, start_line)
	dist2 = find_position_in_array(finish_station, finish_line)

	totaldistance = dist1 - dist2
	puts dist1
	puts dist2
	puts totaldistance.abs

end

###########



print_subway_line(line_n)
start = get_start(line_n)
finish = get_finish(line_n)

calculate_trip_length(start, line_n, finish, line_n)
