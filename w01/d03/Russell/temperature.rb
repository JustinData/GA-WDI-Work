def menu
	print "convert front (f)arenheit, (c)elcius or (k)elvin?"
	$user_menu_choice = gets.chomp
end

def farenheit
	print "convert to (k)elvin or (c)elcius?"
	$farenheit_choice = gets.chomp

	case $farenheit_choice
	when "k"
		puts "What is your temperature in Farenheit?"
		num1 = gets.chomp.to_i
		puts "Your temperature in Kelvin is #{(num1 + 459.67) * (5/9)}"
	menu
	farenheit
end
