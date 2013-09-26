#define subway line list
$mta = {
	n: ["times square", "34th", "28th", "23rd", "union square", "8th"], 
	l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"], 
#	s: ["grand central", "33rd", "28th", "23rd", "union square", "astor"]
}

#list of stops available for given line
def available_stops(subway_line)
	subway_line.join(" | ")
end

#check if going downtown or uptown
#if start position is < end position then downtown
def going_downtown?(start_stop, end_stop)
	#going EAST == going DOWNTOWN
	$n_line.index(start_stop) < $n_line.index(end_stop) ? true : false
end

#count through how many of stops passed by
def trip_counter(subway_stops_list, start_stop, end_stop)
	subway_stops_list.index(end_stop) - subway_stops_list.index(start_stop)
end

#count through after array reversal
def reverse_trip_counter(subway_stops_list, start_stop, end_stop)
	subway_stops_list.index(end_stop) - subway_stops_list.index(start_stop)
end

#method checking whether journey transfer involved
def transfer?(line_off, stop_on)
	##subway line include start
	!$mta[line_off.to_sym].include?(stop_on)
end

#NOTES
#Tactical diffs between Phase 1 & Phase 2:
#1 vs 2 subway lines

#adjust counter & reverse counter methods
#############################################

#procedure
# puts available_stops($n_line)

# puts "What stop do you wish to get BEGIN your journey?"
# stop_begin = gets.chomp.downcase
# puts "What stop do you wish to END your journey?"
# stop_end = gets.chomp.downcase

# if going_downtown?(stop_begin, stop_end)
# 	puts "Your trip duration is: #{trip_counter($n_line, stop_begin, stop_end)} stops"
# else
# 	puts "Your trip duration is: #{trip_counter($n_line.reverse, stop_begin, stop_end)} stops"
# end

#transfers at 'union square'-------------------

	#def total trip length =
		counter = 0

		start_stop = 'times square'
		end_line = 'l'
		end_stop = '1st ave'

		#if transfer aka endline.include?(start stop) == false
		if transfer?(end_line, start_stop)
			#depending on trip type: check begin stop line & end stop line
			puts "transfer"
				#if start at n 

					#if going downtown
						#counter += from start stop to 'union square'
					#else if going uptown
						#counter += from start stop to 'union square' w/ line reverse
					#end

					#if going east
						#counter += from start stop to 'union square'
					#else if going west
						#counter += from start stop to 'union square' w/ line reverse
					#end					

				#else if start at l

					#if going east
						#counter += from start stop to 'union square'
					#else if going west
						#counter += from start stop to 'union square' w/ line reverse
					#end

					#if going downtown
						#counter += from start stop to 'union square'
					#else if going uptown
						#counter += from start stop to 'union square' w/ line reverse
					#end

				#end

		#else if regular trip
		else
		puts "NOT transfer"
			#if downtown/east
				#counter += regular count
			#else if uptown/west
				#counter += regular count w/ line reverse
			#end
		end
		

		counter
	#end

#--------------------------------------------------


def total_trip_length
end




