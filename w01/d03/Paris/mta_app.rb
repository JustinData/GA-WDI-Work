n = ['times square', '34th', '28th-n', '23rd-n', 'union station']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
#mta = {'n' => n, 'l' => l, 's' => s}

# mta = {}
# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

#PHASE 2
########## THIS BLOCK ASKS FOR THE LINE ON AND STOP ON #############

puts "What line would you like to get on?"
line_on = gets.chomp.downcase

if line_on == "n"
  puts "Welcome to the N line. Here are your stops: 'times square', '34th', '28th-n', '23rd-n', 'union station'."
else line_on == "l"
  puts  "Welcome to the L line. Here are your stops: '8th', '6th', 'union station', '3rd', '1st'."
end 

puts "What stop would you like to get on?"
stop_on = gets.chomp.downcase

########## THIS BLOCK ASKS FOR THE LINE OFF AND STOP OFF #############

puts "What line would you like to get off?"
line_off = gets.chomp.downcase

if line_off == "n"
  puts "Here are your stops: 'times square', '34th', '28th-n', '23rd-n', 'union station'."
elsif line_off == "l"
  puts  "Here are your stops: '8th', '6th', 'union station', '3rd', '1st'."
end

puts "What stop would you like to get off?"
stop_off = gets.chomp.downcase

########## THIS BLOCK CALCULATES THE NUMBER OF STOPS PER LINE AND ADDS THEM TOGETHER. #############

if line_on || line_off == "n"
    n_hash = Hash[n.map.with_index.to_a]
    n_stop_on_index = n_hash[stop_on] 
    n_stop_off_index = n_hash[stop_off] 
    total_n_line_stops = (n_stop_on_index.to_i - n_stop_off_index.to_i).abs 
    puts "these are your n stops: #{total_n_line_stops}"
end


if line_on || line_off == "l"
  l_hash = Hash[l.map.with_index.to_a]
  l_stop_on_index = l_hash[stop_on] 
  l_stop_off_index = l_hash[stop_off] 
  total_l_line_stops = (l_stop_on_index.to_i - l_stop_off_index.to_i).abs
  puts "these are your l stops: #{total_l_line_stops}"
end

puts "Your total subway stops are: #{ (total_n_line_stops.to_i + total_l_line_stops.to_i).abs }."
