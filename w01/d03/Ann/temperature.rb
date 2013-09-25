puts "What is the temperature in Celsius?"
temp_celsius = gets.chomp.to_i 

puts "Would you like to convert this to (f)ahrenheit or (k)elvin?"
conversion = gets.chomp.downcase 

case conversion 
when "f"
  convert_to_fahrenheit
when "k"
  convert_to_kelvin
end 

def convert_to_fahrenheit (temp_celsius)
  temp_celsius * (9/5) + 32 
  puts "#{temp_celsius} degrees Celsius is equivalent to #{temp_celsius * (9/5) + 32} degrees Celsius."
end

def convert_to_kelvin 
  puts "#{temp_celsius} degrees Celsius is equivalent to #{temp_celsius + 273.15} kelvin."
end 



