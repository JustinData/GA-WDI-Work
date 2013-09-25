#Creating an MTA app! 
#Phase 1
#One line functionality

n = ["times_sq", "34th", "28th", "23rd", "union_sq", "8th"]
#n_hash = [times_sq: 1, 34th: 2, 28th: 3, 23rd: 4, union_sq: 5, 8th: 6]

l = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
six = ["Grand Central", "33rd St", "28th St", "23rd St", "Union Square", "Astor Place"]

puts "Welcome to the L Train! Here are your possible stops:"
puts n[1..6] 

def stop_counter 
puts "Where is your starting point?"
starting_pt = gets.chomp   

puts "Where is your end point?"
end_pt = gets.chomp 

total_stops = n.index(starting_pt) - n.index(end_pt) 

puts "You have #{total_stops.abs} stops!"
end 

puts stop_counter 





