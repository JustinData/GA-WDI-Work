# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  print "(b)asic, (a)dvanced, or (q)uit:"
  $request = gets.chomp.downcase #why are we using a global variable?
end
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
  menu 
  def basic_calc 
    print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: " 
  end
  basic_calc
  $request2 = gets.chomp.downcase
  if $request2 == "a"
    puts "Give me a number"
    number1 = gets.chomp.to_i
    puts "Give me another number"
    number2 = gets.chomp.to_i
    puts "your answer is #{number1 + number2}"
  end
  basic_calc
  $request3 = gets.chomp.downcase
  if  $request3 == "s"
    puts "Give me a number"
    number3 = gets.chomp.to_i
    puts "Give me another number"
    number4 = gets.chomp.to_i
    puts "your answer is #{number3 - number4}"
  end 
  basic_calc
  $request4 = gets.chomp.downcase
  if $request4 == "m"
    puts "Give me a number"
    number5 = gets.chomp.to_i
    puts "Give me another number"
    number6 = gets.chomp.to_i
    puts "your answer is #{number5 * number6}"
  end 
  basic_calc
  $request5 = gets.chomp.downcase
  if $request5 == "d"
    puts "Give me a number"
    number7 = gets.chomp.to_i
    puts "Give me another number"
    number8 = gets.chomp.to_i
    puts "your answer is #{number7 / number8}"
  end
menu 

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  $request = gets.chomp.downcase
end
advanced_calc
  if $request6 == "p"
    puts "Give me a number"
    number9 = gets.chomp.to_i
    puts "Give me another number"
    number10 = gets.chomp.to_i
    puts "your answer is #{number9 ** number10}"
  end
  advanced_calc
    if $request7 == "s"
      puts "Give me a number"
    number11 = gets.chomp.to_i
    puts "Give me another number"
    number12 = gets.chomp.to_i
    puts "your answer is #{number11 sqrt(number12)}"
  end
response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
  response = menu
end 