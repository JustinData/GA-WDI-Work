# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "What would you like to do?"
	puts "(a)dd"
	puts "(s)ub"
	puts "(m)ultiply"
	puts "(d)ivide"
	puts "(q)uit"

	return gets.chomp.downcase
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc (operation, a, b)
  
  case operation
  when "a"
  	result = a+b
  when "s"
  	result = a-b
  when "m"
  	result = a*b
  when "d"
  	result = a/b
  else
  	puts "error"
  end

  puts "the result of #{a} #{operation} #{b} is #{result}"
  return result


#  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "

end


response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  puts "give me one number"
  num1 = gets.chomp.to_i
  
  puts "give me the other number"
  num2 = gets.chomp.to_i

  basic_calc(response, num1, num2)

  response = menu
end
