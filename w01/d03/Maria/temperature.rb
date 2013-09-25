puts "Please add a temperature in celcius"
user_temp = gets.chomp.to_f
puts "Would you like to convert celcius to (F)arenheit or to (K)elvin"
convert_to = gets.chomp.downcase
while user_tem


def celcius_to_f_converter	
	answer = (user_temp * 9) / 5 + 32 
end


def celcius_to_k_converter
	answer = user_temp + 273
end

puts "Your converted temperature is: #{answer}"


#The Math:
#cel: Multiply by 9, then divide by 5, then add 32
#Kelvin = Celcius + 273 