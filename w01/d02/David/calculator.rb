# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  print "(b)asic or (q)uit"
  return gets.chomp
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp
  
  puts "Please enter your first number"
  num1 = gets.chomp.to_f
  
  puts "Please enter your second number"
  num2 = gets.chomp.to_f

  case operation
  when "a"
    puts "#{num1} + #{num2} = #{num1 + num2}"
  when "s"
    puts puts "#{num1} - #{num2} = #{num1 - num2}"
  when "m"
    puts puts "#{num1} * #{num2} = #{num1 * num2}"
  when "d"
    puts puts "#{num1} / #{num2} = #{num1 / num2}"
  end
end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp
  if operation == "p"
    puts "Please enter your first number"
    num1 = gets.chomp.to_f
    
    puts "Please enter your second number"
    num2 = gets.chomp.to_f
  elsif operation == "s"
    puts "Please enter your number to be squared"
    num1 = gets.chomp.to_f
      
case operation
when "p"
  puts "#{num1} to the power of #{num2} = #{num1 ** num2}"
when "s"
  puts "#{num1}  #{num2} = #{num1 + num2}"
end


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
  basic_calc
  response = menu
end


