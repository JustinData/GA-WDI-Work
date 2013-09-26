nline = ['ts', '34th', '28th-n', '23rd-n', 'us']

def print_subway_lines(nline)
	x = 0
	puts "These are the stops on the N line"
	while x <= nline.length
		puts nline[x]
		x = x + 1
	end
end

def get_start_point
	puts "What stop are you getting on at?"
	get_on_stop = gets.chomp.downcase
	return get_on_stop
	# x = 0
	# while nline[x] != get_on_stop
	# 	x = x + 1
	# end
	# stop1 = 
end 

def get_stop_point
	puts "What stop are you getting off at?"
	get_off_stop = gets.chomp.downcase
	return get_off_stop
# 	x = 0 
# 	while nline[x] != get_off_stop
# 		x = x + 1
# 	end
# 	return x
end 

#############################################

print_subway_lines(nline)
stop_on = get_start_point
puts stop_on
stop_off = get_stop_point
puts stop_off
distance = nline.index(stop_off) - nline.index(stop_on)
puts "The distance between #{stop_on} and #{stop_off} is #{distance.abs} stops."
# get_stop_point

# distance = get_stop_point(x) - get_start_point(x)
# puts "The distance between your stops is #{distance}."

# end