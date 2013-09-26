# MTA Subway App

###Definitions Begin

# N Subway Line
line_n = ["ts", "34th", "28th-n", "23rd-n", "us", "8th"]
# L Subway Line
line_l = ["8th", "6th", "us", "3rd", "1st"]
# 6 (Six) Subway Line
line_six = ["gc", "33rd", "28th-s", "23rd-s", "us", "astor"]

def user_choice_line_start
   puts "What line would you like to get on at? The N, L, or Six: "
   user_choice_line_start = gets.chomp.downcase
end

def user_choice_line_end
   puts "What line would you like to get off at? The N, L, or Six: "
   user_choice_line_stop = gets.chomp.downcase
end

def get_on
   puts "\nWhat stop would you like to get on at?"
   user_start = gets.chomp.downcase
end

def get_off
   puts "\nWhat stop would you like to get off at?"
   user_stop = gets.chomp
end
### Definitions End


### Program Begins
puts "\n***MTA***\n"

user_line_start = user_choice_line_start

case user_line_start
when "n"
   puts "N stops: " + line_n[0..7].join(", ")
   line_start = line_n
when "l"
   puts "L stops: " + line_l[0..6].join(", ")
   line_start = line_l
when "six"
   puts "Six stops: " + line_six[0..7].join(", ")
   line_start = line_six
else
   puts "That line is not an option."
   line_start
end

user_start = get_on

user_line_end = user_choice_line_end

case user_line_end
when "n"
   puts "N stops: " + line_n[0..7].join(", ")
   line_stop = line_n
when "l"
   puts "L stops: " + line_l[0..6].join(", ")
   line_stop = line_l
when "six"
   puts "Six stops: " + line_six[0..7].join(", ")
   line_stop = line_six
else
   puts "That line is not an option."
end

user_stop = get_off

if user_line_start == user_line_end
   total_stops = (line_start.index(user_start) - line_stop.index(user_stop)).abs
else
   total_stops = ((line_start.index(user_start) - line_start.index("us"))).abs + ((line_stop.index(user_stop) - line_stop.index("us"))).abs
   
end

if total_stops == 1
   puts "You have #{total_stops} stop."  
else
   puts "You have #{total_stops} stops."  
end