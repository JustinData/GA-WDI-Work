#subway lines######
$subway = {
	n: ["times square", "34th", "28th", "23rd", "union square", "8th"], 
	l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"], 
	s: ["grand central", "33rd", "28th", "23rd", "union square", "astor"]
}

###################

#show user available stops
def list_stops(line)
	puts "The stops available are:"
	$subway[line.to_sym].each { |line| puts line }
end

#user input methods####
def train_choice
  puts "Please choose a Train: (n) line or (l) line to get on"
  gets.chomp.downcase
end

def stop_on_choice
  puts "Please choose a stop to get on"
  gets.chomp.downcase
end

def line_off_choice
	puts "What line do you wish to get off at (n) line or (l) line?"
	gets.chomp.downcase
end

def stop_off_choice
  puts "Please choose a stop to get off?"
  gets.chomp.downcase
end

#find out direction (ie north, east, south, west)
def going_south?(line, start, stop)
	$subway[line.to_sym].index(start) < $subway[line.to_sym].index(stop)
end

def going_east?(start, stop)
	$subway[:l].index(start) < $subway[:l].index(stop)
end

#basic counter
def how_many_stops(subway, on, off)
	#array
	choice_subway = subway

	choice_subway.index(off) - choice_subway.index(on)
end

# Southward count
def s_count(line, on, off)
	how_many_stops($subway[line.to_sym], on, off)
end
# Northward count
def n_count(line, on, off)
	how_many_stops($subway[line.to_sym].reverse, on, off)
end
# Westward count
def w_count(on, off)
	how_many_stops($subway[:l].reverse, on, off)
end
# Eastward count
def e_count(on, off)
	how_many_stops($subway[:l], on, off)
end

#start execution##############################################

# ask user what subway_LINE want to get on until they say get OFF
case train_choice
#if user says n-LINE
when 'n'
	#provide all stops of n-LINE
	list_stops('n')

	#ask what STOP to get ON at
	$stop_start = stop_on_choice

	#ask what LINE to get OFF at
	line_stop = line_off_choice

	#provide all stops of OFF LINE
	list_stops(line_stop)

	#ask what STOP to get OFF at
	$stop_end = stop_off_choice

	#return number of stops
	#case within case N
	case line_stop
	when 'n'
		#N <- S vs N -> S
		puts going_south?('n', $stop_start, $stop_end) ? s_count('n', $stop_start, $stop_end) : n_count('n', $stop_start, $stop_end)
	#if from N to L
	when 'l'
		
		#SE
		if going_south?('n', $stop_start, 'union square') && going_east?('union square', $stop_end)
			puts s_count('n', $stop_start, 'union square') + e_count('union square', $stop_end)
		#SW
		elsif going_south?('n', $stop_start, 'union square')
			puts s_count('n', $stop_start, 'union square') + w_count('union square', $stop_end)
		#NE
		elsif going_east?('union square', $stop_end)
			puts n_count('n', $stop_start, 'union square') + e_count('union square', $stop_end)
		#NW
		else
			puts n_count('n', $stop_start, 'union square') + w_count('union square', $stop_end)
		end
	else #6 Line
		#SS
		if going_south?('n', $stop_start, 'union square') && going_south?('s', 'union square', $stop_end)
			puts s_count('n', $stop_start, 'union square') + s_count('s', 'union square', $stop_end)
		#SN
		elsif going_south?('n', $stop_start, 'union square')
			puts s_count('n', $stop_start, 'union square') + n_count('s', $stop_start, 'union square')
		#NS 
		elsif going_south?('s', 'union square', $stop_end)
			puts n_count('n', $stop_start, 'union square') + e_count('union square', $stop_end)
		#NN
		else
			puts n_count('n', $stop_start, 'union square') + w_count('union square', $stop_end)
		end
	end


#if user says l-LINE
when 'l'
	#provide all stops of l-LINE
	list_stops('l')

	#ask what STOP to get ON at
	$stop_start = stop_on_choice

	#ask what LINE to get OFF at
	line_stop = line_off_choice

	#provide all stops of OFF LINE
	list_stops(line_stop)

	#ask what STOP to get OFF at
	$stop_end = stop_off_choice

	#return number of stops
	#case within case L
	case line_stop
	#if from L to N
	when 'l'
		puts going_east?($stop_start, $stop_end) ? s_count('l', $stop_start, $stop_end) : n_count(subway[:l], $stop_start, $stop_end)
	when 'n'
		#SE
		if going_south?('n', 'union square', $stop_end) && going_east?($stop_start, 'union square')
			puts s_count('n', 'union square', $stop_end) + e_count($stop_start, 'union square')
		#SW
		elsif going_south?('n', 'union square', $stop_end)
			puts s_count('n', 'union square', $stop_end) + w_count($stop_start, 'union square')
		#NE
		elsif going_east?($stop_start, 'union square')
			puts n_count('n', 'union square', $stop_end) + e_count($stop_start, 'union square')
		#NW
		else
			puts n_count('n', 'union square', $stop_end) + w_count($stop_start, 'union square')
		end
	else #6 Line
		#	nil
	end

else #6 line
	nil
end