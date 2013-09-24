# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = gets.chomp.to_i

# Generate a random number between 0 and 10
secret = rand(10)

# Use a while loop to let the user guess again until he/she gets the answer right.
while answer != secret
	# Checking to shame user if guess is above 10
	if answer <= 10
		puts "Guess again!"
	else
		puts "Why would you guess a number larger than 10, dummy?"
		puts "Whatever, guess again!"
	end

	answer = gets.chomp.to_i

end

# Display a congratulatory response
puts "That's it!  How'd you know?!"
