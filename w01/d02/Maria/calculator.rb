# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
 puts "(a)dvanced, (b)asic, or (q)uit"
 response = gets.chomp.downcase
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  calculation_chosen = gets.chomp
  puts "give me first number"
   	num1 = gets.chomp.to_i
   	puts "give me second number"
   	num2 = gets.chomp.to_i
  if calculation_chosen == "a" 
  	answer = num1+num2 
  elsif calculation_chosen =="b"
  	answer = num1-num2
  elsif calculation_chosen =="m"
  	answer = num1*num2
  else 
  	answer = num1/num2
  end
print "Your answer is: #{answer}"
puts "   Now what do you want to do?"
response = menu

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
  
  if response == "b"
  	basic_calc
   	response = menu
  end
end
