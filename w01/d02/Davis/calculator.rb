#user input method
def get_user_input
	gets.chomp
end

# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "(b)asic, (a)dvanced, (e)xtra or (q)uit?"
	get_user_input
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  choice = get_user_input

	#user input  
  puts "First number?"
  n1 = get_user_input.to_i
  puts "Second number?"
  n2 = get_user_input.to_i

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
  	choice = get_user_input
  end

end

# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  print "(p)ower, (s)qrt,: "
  choice = get_user_input

  #user input
  puts "Pick a number"
  n = get_user_input.to_i

  case choice
  when "p"
  	puts "To what power do you want #{n}?"
  	n2 = get_user_input.to_i
  	puts "Your answer: #{n ** n2}"
  when "s"
  	puts "The square root of #{n} is #{Math.sqrt(n)}"
  else
  	puts "Not an option. Resubmit."
  	choice = get_user_input
  end
end

def extra
	print "(s)in, (c)os, (t)an, (f)actorial: "
	choice = get_user_input

	#user input
	puts "Pick a number"
	n = get_user_input.to_i

	case choice
	when "s"
		puts "The cos of #{n} is #{sin(n)}"
	when "c"
		puts "The sin of #{n} is #{sin(n)}"
	when "t"
		puts "The sin of #{n} is #{tan(n)}"
	when "f"
		puts "The factorial of #{n} is #{(1..n).inject(:*)}"
	else
		puts "Not a choice. Pick again."
		choice = get_user_input
	end

end

response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
	basic_calc if response == 'b'
	advanced_calc if response == 'a'
	extra if response == 'e'

  response = menu
end
