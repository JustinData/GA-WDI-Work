=begin
	
N Line Stops Array: TS, 34th, 28th-N, 23rd-N, US, 8th-N

Ask user what stop they're getting on at?
puts N line array to display options

Set variable start equal to user input

Ask user what stop they're getting off at
puts N line array to display options

Get variable end equal to user input

Get indeces of start and stop using Array#index("stop_name")

Subtract indeces from one another and return the absolute value

Puts distance between the stops
	
=end

n = ["ts", "34th", "28th-n", "23rd-n", "us", "8th-n"]

puts "What stop are you getting on at?"
puts "Choose 'ts', '34th', '28th-n', '23rd-n', 'us', or '8th-n': "
start = gets.chomp.downcase

puts "What stop are you getting off at?"
puts "Choose 'ts', '34th', '28th-n', '23rd-n', 'us', or '8th-n': "
stop = gets.chomp.downcase

distance = ( n.index(start) - n.index(stop) ).abs

puts "Your trip is #{distance} stops"