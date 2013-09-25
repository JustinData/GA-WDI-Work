# MyCalc Ruby App

# Definitions
def menu
  puts "\n***MyCalc***\n"
  puts "(b)asic, (a)dvanced, or (q)uit:"
  $user_choice = gets.chomp.downcase
end

def basic_calc
   print "Would you like to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, or (r)eturn to main menu: "
   user_choice_oper = gets.chomp.downcase

    oper_choice_as_string = case user_choice_oper
    when "a"
      "add"
    when "s"
     "subtract"
    when "m" 
     "multiply"
    when "d"
     "divide"
    when "r"
      menu
    else 
     puts "\nIncorrect input. Please enter 'a' for addition, 's' for subtraction, 'm' fomultiplication, 'd' for division or 'r' to return to the main screen.\n"    
     basic_calc
    end

    unless user_choice_oper == "r"
      puts "What is the first number you would like to #{oper_choice_as_string}: "
      num_one = gets.chomp.to_i
      puts "What is the second number you would like to #{oper_choice_as_string}: "
      num_two = gets.chomp.to_i
    end

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

def advanced_calc
    print "Would you like to (p)ower, (s)qrt, or (r)eturn to main screen: "
    adv_user_choice_oper = gets.chomp.downcase

    print "What is the first number you would like to compute: "
    adv_num_one = gets.chomp.to_i
    print "What is the second number you would like to compute: "
    adv_num_two = gets.chomp.to_i

    if adv_user_choice_oper == "p"
      puts "Your answer is #{adv_num_one ** adv_num_two}."
    elsif adv_user_choice_oper == "s"
      puts "Your answer is #{adv_num_one % adv_num_two}."
    else
      puts "\nIncorrect input. Please enter 'p' for power, 's' for square root, or 'r' to return to the main menu.\n"
      advanced_calc
    end
# UNFINISHED
end

# Call menu
menu 

while $user_choice != "q"
  if $user_choice == "b"
    basic_calc
  elsif $user_choice == "a"
    advanced_calc
  else
    puts "\nIncorrect input. Please enter 'b' for basic calculations, 'a' for advanced calculations, or 'q' to quit.\n"
    menu
  end
end
