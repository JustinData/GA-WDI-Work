# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "(b)asic, (a)danced, or (q)uit?"
	gets.chomp
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = gets.chomp

	#user input  
  puts "First number?"
  n1 = gets.chomp.to_i
  puts "Second number?"
  n2 = gets.chomp.to_i

  case choice
  when "a"
  	puts "Your answer: #{n1 + n2}"
  when "s"
  	puts "Your answer: #{n1 - n2}"
  when "m"
  	puts "Your answer: #{n1 * n2}"
  when "d"
  	puts "Your answer: #{n1 / n2} R#{n1 % n2}"
  else
  	puts "Not an option. Resubmit."
  	choice = gets.chomp
  end

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt: "
  choice = gets.chomp

  #user input
  puts "First number?"
  n1 = gets.chomp.to_i
  puts "Second number?"
  n2 = gets.chomp.to_i

  case choice
  when "p"
  	puts "Your answer: #{n1 ** n2}"
  when "s"
  	puts "The square root of #{n1} is #{Math.sqrt(n1)}"
  	puts "The square root of #{n2} is #{Math.sqrt(n2)}"  	
  else
  	puts "Not an option. Resubmit."
  	choice = gets.chomp
  end
end


response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
	basic_calc if response == 'b'
	advanced_calc if response == 'a'

  response = menu
end
