# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	print " Welcome to Calc-it "
	print "(A)dvanced, (B)asic, (Q)uit: "
	response = gets.chomp.downcase
end

# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
	print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
	operation = gets.chomp.downcase
	puts "Enter your first number:"
 		first = gets.chomp.to_i
    puts "Enter your second number:"
    	second = gets.chomp.to_i
    if operation == "a"
  		answer = first + second
  		puts "#{first} plus #{second} equals #{answer}."
  	elsif operation == 's'
  		answer = first - second
  		puts " #{first} minus #{second} equals #{answer}."
  	elsif operation  == 'm'
  		answer = first * second
  		puts "#{first} times #{second} equals #{answer}."
  	elsif operation == 'd'
  		answer = first / second
  		puts "#{first} divided #{second} equals #{answer}."
  	else 
  		puts "That is not a function."
  	end
  end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase
  	if operation == 'p'
  		puts "Enter your first number:"
  		first = gets.chomp.to_i
  		puts "Enter your second number:"
  		second = gets.chomp.to_i
  		answer = first ** second
  		puts "#{first} to the #{second} power equals #{answer}."
  	elsif operation == 's'
  		puts "Enter a number"
  		num = gets.chomp.to_f
  		answer = Math.sqrt(num)
  		puts "The square root of #{num} is #{answer}"
  	else 
  		puts "That is not a function"
  	end
end

response = menu
while response != 'q'
	if response == 'b'
		basic_calc
		response = menu
	elsif response == 'a'
		advanced_calc
		response = menu
	else
		response = menu
	end
end

