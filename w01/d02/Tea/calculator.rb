def menu
  print "(b)asic, (a)dvanced, (q)uit"
  $user_menu_choice = gets.chomp
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, or (ma)in menu "
  operation = gets.chomp.downcase

  case operation
    when "a"
      puts "Enter your first number."
      num1 = gets.chomp.to_f
      puts "Enter your second number."
      num2 = gets.chomp.to_f
      puts "The sum is #{num1 + num2}"
      #get numbers and print sum
    when "s"
      puts "Enter the number you want to subtract from."
      num1 = gets.chomp.to_f
      puts "Enter the number you want to subtract."
      num2 = gets.chomp.to_f
      puts "#{num1} minus #{num2} is #{num1 - num2} "
      #get numbers and print answer
    when "m"
      puts "Enter your first number"
      num1 = gets.chomp.to_f
      puts "Enter your second number"
      num2 = gets.chomp.to_f
      puts "#{num1} times #{num2} is #{num1 * num2} "
      #get numbers and print answer 
    when "d"
      puts "Enter the number you want to divide."
      num1 = gets.chomp.to_f
      puts "What do you want to divide by?"
      num2 = gets.chomp.to_f
      puts "#{num1} divided by #{num2} is #{num1 / num2} "
      #get numbers and print answer 
    when "ma"
      menu
    else
      puts "That is not an option. Please type a, s, m, or d."
  end
end

def advanced_calc
  print "(p)ower, (s)qrt, or (ma)in menu"
  operation = gets.chomp.downcase

  case operation
  when "p"
    puts "What is your base number?"
      num1 = gets.chomp.to_f
      puts "What is the exponent?"
      num2 = gets.chomp.to_f
      puts "#{num1} to the power of #{}{num2} is #{num1 ** num2}"
  when "s"
    puts "What number would you like to find the square root of?"
    num = gets.chomp.to_f
    puts "The square root of #{num} is #{Math.sqrt(num)}."
  when "ma"
    menu
  else 
    puts "That's not an option."
  end
end

menu

while $user_menu_choice != 'q'
  case $user_menu_choice
  when "b"
    basic_calc
  when "a"
    advanced_calc
  when "q"
    abort("Bye!")
  when "m"
    menu
  else
    puts "that wasn't an option. Don't break the program."
  end
end



