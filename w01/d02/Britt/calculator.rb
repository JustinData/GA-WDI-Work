
# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "What type of operation you would like to perform?"
	puts "(b)asic arithmetic: addition, subtraction, multiplication, division"
	puts "(a)dvanced: exponents and square roots"
	puts "(t)rigonometry: sine, cosine, tangent"
	puts "(f)actorial: product of each integer below itself"
	puts "(q)uit the calculator"
	puts "Type your selection and press return:"
	$choice = gets.chomp.downcase
end

# methods for user input depending on how many numbers are necessary
def get_one_number
	puts "What number would you like to use?"
  $num1 = gets.chomp.to_f # all methods using one number conveniently all return floats
end

def get_two_numbers
	puts "What is the first number you'd like to use?"
  $num1 = gets.chomp.to_i

  puts "What is the second number youd like to use?"
  $num2 = gets.chomp.to_i
end

#methods for basic_calc
def addition(a, b)
	puts a + b
end

def subtraction(a, b)
	a - b
end

def multiplication(a, b)
	a * b
end

def division(a, b)
	a / b
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  basic = gets.chomp.downcase

  get_two_numbers

  case arithmetic
  when "a"
  	puts addition($num1, $num2)
  when "s"
   	puts subtraction($num1, $num2)
  when "m"
   	puts multiplication($num1, $num2)
  when "d"
   	puts division($num1, $num2)
  end

end




# placeholder methods for advanced_calc
def power
	get_two_numbers
	puts ($num1 ** $num2)
end

def square_root
	get_one_number
	puts Math.sqrt($num1)
end


# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def advanced_calc
  puts "(p)ower, (s)qrt: "
  advanced = gets.chomp.downcase

  case advanced
  when "p"
  	power
  when "s"
  	square_root
  end

end


def trigonometric_calc
	puts "(s)ine, (c)osine, (t)angent: "
	trig = gets.chomp.downcase

	get_one_number

	case trig
	when "s"
		puts Math.sin($num1)
	when "c"
		puts Math.cos($num1)
	when "t"
		puts Math.tan($num1)
	end
end


def factorial; end

menu
# This process should continue until the user selects a quit option from the menu
while $choice != 'q'

	case $choice
	when "b"
		basic_calc
	when "a"
		advanced_calc
	when "t"
		trigonometric_calc
	when "f"
		factorial
	end

  menu
end

