puts "Please enter a temperature in Celsius"
celsius = gets.chomp.to_i

puts "Convert to (f)arenheit or (k)elvin?"
response = gets.chomp.downcase

if response == "f"
  covert_to_farenheit
elsif response == "k"
  convert_to_kelvin
else
  puts "please pick f or k to convert."
end

def covert_to_farenheit
  celcius
end

def convert_to_kelvin

  end
