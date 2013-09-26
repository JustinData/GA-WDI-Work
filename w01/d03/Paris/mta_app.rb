n = ['times square', '34th', '28th-n', '23rd-n', 'union station']
# l = ['8th', '6th', 'us', '3rd', '1st']
# s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
# #mta = {'n' => n, 'l' => l, 's' => s}

# def print_line_stops(x)
#   stop_on
# end

# def ask_for_stop
#   puts "What stop would you like to get on?"
#   stop_on = gets.chomp.downcase
#   puts "What stop would you like to get off?"
#   stop_off = gets.chomp.downcase
# end

#PHASE 2
# puts "What line would you like to use?"
# line_on = gets.chomp.downcase
# line_on = ask_for_stop


# mta = {}
# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

puts "Welcome to the N line. Here are your stops: #{n}"

puts "What stop would you like to get on?"
stop_on = gets.chomp.downcase
puts "What stop would you like to get off?"
stop_off = gets.chomp.downcase

n_hash = Hash[n.map.with_index.to_a]
stop_on_index = n_hash[stop_on]
stop_off_index = n_hash[stop_off]

find_difference = (stop_off_index.to_i - stop_on_index.to_i).abs

puts "There are #{find_difference} stops on your trip. Bon voyage."

#the method that triggers the appropriate array.
# if line_on == "n"
#   print_n
# elsif line_on == "l" 
#   puts "Which stop would you like on the #{l}"
# else line_on == "s"
#   puts "Which stop would you like on the #{s}" 
# end 



#PHASE 2

# create a case to capture the desired line.
# ask for stop_on
# ask for stop_off


