# MyCalc Ruby App

# menu method defined
def menu
  puts ""
  puts "***MyCalc***"
  puts "(b)asic, (a)dvanced, or (q)uit:"
  $user_choice = gets.chomp.downcase
end

# Call menu
menu 

# basic_calc method defined
def basic_calc
   print "Would you like to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, or (r)eturn to main menu: "
   user_choice_oper = gets.chomp.downcase

    if user_choice_oper == "a"
     user_oper = "add"
    elsif user_choice_oper == "s"
     user_oper = "subtract"
    elsif user_choice_oper == "m" 
     user_oper = "multiply"
    elsif user_choice_oper == "d"
     user_oper = "divide"
    elsif user_choice_oper == "r"
      menu
    else 
     puts ""
     puts "Incorrect input. Please enter 'a' for addition, 's' for subtraction, 'm' fomultiplication, 'd' for division or 'r' to return to the main screen."
     puts ""      
     basic_calc
    end

    print "What is the first number you would like to #{user_oper}: "
    num_one = gets.chomp.to_i
    print "What is the second number you would like to #{user_oper}: "
    num_two = gets.chomp.to_i

    if user_choice_oper == "a"
      puts "Your answer is #{num_one + num_two}."
    elsif user_choice_oper == "s"
      puts "Your answer is #{num_one - num_two}."
    elsif user_choice_oper == "m"
      puts "Your answer is #{num_one * num_two}."
    else
      puts "Your answer is #{num_one / num_two}."
    end
  end

# advanced_calc method defined
def advanced_calc
   print "Would you like to (p)ower, (s)qrt: "
# UNFINISHED
end

while $user_choice != "q"
  if $user_choice == "b"
    basic_calc
  elsif $user_choice == "a"
    advanced_calc
  elsif $user_choice != "a" && $user_choice != "b" && $user_choice != "q"
    puts "Incorrect input. Please enter 'b' for basic calculations, 'a' for advanced calculations, or 'q' to quit."
    menu
  end
end
