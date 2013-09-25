n_train = ["Times Square", "34th Street", "28th Street -N", "23rd Street - N", "Union Square"]
l_train = ["8th Avenue", "6th Avenue", "Union Square", "3rd Ave", "1st Ave"]
s_train = ["Grand Central", "33rd Street", "28th Street - 6 line", "23rd Street - 6 line", "Union Square"]
mta= {n: n_train, l: l_train, s: s_train}
i=0


puts "Welcome to the MTA Subway System! The best darn train system this side of the Hudson!"
puts "These are the trains you can take:"


while i < n_train.length
  print (i + 1).to_s + " - "
  puts n_train[i]
  i += 1
end

puts "Where do you want to start your trip??"
print ">"
choice_1 = gets.chomp.to_i - 1

puts "Where do you want to go??"
print ">"
choice_2 = gets.chomp.to_i - 1

trip_length = (choice_1 - choice_2).abs
puts "OK! So you want to start at #{n_train[choice_1]} and go to #{n_train[choice_2]}"
puts "That would be #{trip_length} stops!"
