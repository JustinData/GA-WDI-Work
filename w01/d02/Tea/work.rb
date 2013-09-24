def basic_calc
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  $operation = gets.chomp.downcase
end

  case $operation
    when "a"
      puts "Enter your first number."
      num1 = gets.chomp.to_i
      puts "Enter your second number."
      num2 = gets.chomp.to_i
      puts "The sum is #{num1 + num2}"
      #get numbers and print sum
    when "s"
      puts "Enter the number you want to subtract from."
      num1 = gets.chomp.to_i
      puts "Enter the number you want to subtract."
      num2 = gets.chomp.to_i
      puts "#{num1} minus #{num2} is #{num1 - num2} "
      #get numbers and print answer
    when "m"
      puts "Enter your first number"
      num1 = gets.chomp.to_i
      puts "Enter your second number"
      num2 = gets.chomp.to_i
      puts "#{num1} times #{num2} is #{num1 * num2} "
      #get numbers and print answer 
    when "d"
      puts "Enter the number you want to divide."
      num1 = gets.chomp.to_i
      puts "What do you want to divide by?"
      num2 = gets.chomp.to_i
      puts "#{num1} divided by #{num2} is #{num1 / num2} "
      #get numbers and print answer 
    else
      puts "That is not an option. Please type a, s, m, or d."
end