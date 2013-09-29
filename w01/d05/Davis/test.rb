x = gets.chomp
until x == 'q'
	case x
		when 'y'
			puts "yes"
			x = gets.chomp
		when 'n'
			puts "no"
			x = gets.chomp
		else
			puts "else"
			x = gets.chomp
		end	
end

