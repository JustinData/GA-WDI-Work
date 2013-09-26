#subway lines######
subway = {
	n: ["times square", "34th", "28th", "23rd", "union square", "8th"], 
	l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"]
}

#choice methods####
def train_choice
  puts "Please choose a Train: (n) line or (l) line to get on"
  gets.chomp.downcase
end

def stop_on_choice
  puts "Please choose a stop to get on"
  gets.chomp.downcase
end

def line_off_choice
	puts "What line do you wish to get off at?"
	gets.chomp.downcase
end

def stop_off_choice
  puts "Please choose a stop to get off?"
  gets.chomp.downcase
end

#commute counter for a single subway line
def how_many_stops(subway, on, off)
	#array
	choice_subway = subway

	choice_subway.index(off) - choice_subway.index(on)
end

#start execution##############################################

# ask user what subway_LINE want to get on until they say get OFF
case train_choice
#if user says n-LINE
when 'n'
	#provide all stops of n-LINE
	puts "The stops available are"
	subway[:n].each { |line| puts line }

	#ask what STOP to get ON at
	$stop_start = stop_on_choice

	#ask what LINE to get OFF at
	line_stop = line_off_choice

	#provide all stops of OFF LINE
	puts "The stops availabe are"
	subway[line_stop.to_sym].each { |line| puts line }
	#ask what STOP to get OFF at
	$stop_end = stop_off_choice

	#return number of stops
	#case within case N
	case line_stop
	when 'n'
		#N <- S vs N -> S
		puts subway[:n].index($stop_start) < subway[:n].index($stop_end) ? how_many_stops(subway[:n], $stop_start, $stop_end) : how_many_stops(subway[:n].reverse, $stop_start, $stop_end)
	#if from N to L ||
	when 'l'
		#simple count of N + simple count of L
		
		#if N -> S Union Square, then Union Square W <- E
		#reverse the L line if W <- E to allow for 'rightward' counting-style
		if $stop_start != '8th' && ($stop_end == '8th ave' || $stop_end == '6th ave')
			puts 4 + how_many_stops(subway[:l].reverse, 'union square', $stop_end)
		#if N -> S Union Square, then Union Square W -> E
		elsif $stop_start != '8th'
			puts 4 + how_many_stops(subway[:l], 'union square', $stop_end)
		#if N <- S Union Square, then Union Square W <- E
		elsif $stop_start == '8th' && ($stop_end == '8th ave' || $stop_end == '6th ave')
			puts 1 + how_many_stops(subway[:l].reverse, 'union square', $stop_end)
		else
			puts 1 + how_many_stops(subway[:l], 'union square', $stop_end)
		end
	else #6 Line
		nil
	end


#if user says l-LINE
when 'l'
	#provide all stops of l-LINE
	puts "The stops availabe are"
	subway[:l].each { |line| puts line }

	#ask what STOP to get ON at
	$stop_start = stop_on_choice

	#ask what LINE to get OFF at
	line_stop = line_off_choice

	#provide all stops of OFF LINE
	puts "The stops availabe are"
	subway[line_stop.to_sym].each { |line| puts line }
	#ask what STOP to get OFF at
	$stop_end = stop_off_choice

	#return number of stops
	#case within case L
	case line_stop
	when 'l'
		puts subway[:l].index($stop_start) < subway[:l].index($stop_end) ? how_many_stops(subway[:l], $stop_start, $stop_end) : how_many_stops(subway[:l].reverse, $stop_start, $stop_end)
	when 'n'
		#if W <-E, then N <-S
		if ($stop_start == '3rd ave' || $stop_start == '1st ave') && $stop_end != '8th'
			puts how_many_stops(subway[:l].reverse, $stop_start, 'union square') + 4
		#if W <- E, then N -> S
		elsif ($stop_start == '3rd ave' || $stop_start == '1st ave')
			puts how_many_stops(subway[:l].reverse, $stop_start, 'union square') + 1
		#if W -> E, then N <- S
		elsif $stop_end != '8th'
			puts how_many_stops(subway[:l], $stop_start, 'union square') + 4
		#if W -> E Union Square, then N -> S
		else
			puts how_many_stops(subway[:l], $stop_start, 'union square') + 1
		end
	else #6 Line
		#	nil
	end

else #6 line
	nil
end