# MTA Subway App

###Definitions Begin

# N Subway Line
line_n = ["ts", "34th", "28th-n", "23rd-n", "us"]
# L Subway Line
line_l = ["8th", "6th", "us", "3rd", "1st"]
# 6 Subway Line
line_six = ["gc", "33rd", "28th-s", "23rd-s", "us"]



def calc_stop
   puts ""
end

### Definitions End

### Program Begins
puts "\n***MTA***\n"

print line_n

puts "\nWhat stop would you like to get on at?"
user_start = gets.chomp

puts "\nWhat stop would you like to get off at?"
user_stop = gets.chomp

total_stops = (line_n.index(user_start) - line_n.index(user_stop)).abs

puts "You have #{total_stops} stop"