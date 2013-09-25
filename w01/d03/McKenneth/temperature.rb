def celsius_to_fahrenheit(temp)
  fahrenheit = ((9/5) * temp) + 32
end

def celsius_to_kelvin(temp)
  kelvin = 273 + temp
end

def kelvin_to_celsius(temp)
  celsius = temp - 273
end

def kelvin_to_fahrenheit(temp)
  celsius_to_fahrenheit(temp - 273)
end

def fahrenheit_to_celsius(temp)
  celsius = (temp - 32) * (5/9)
end

def fahrenheit_to_kelvin(temp)
  celsius_to_kelvin(fahrenheit_to_celsius(temp))

puts "Give me a temperature in Celsius"
print ">"
celsius = gets.chomp.to_i 

puts "Do you want to convert that to Fahrenheit or Kelvin??"
print ">"
selection = gets.chomp.downcase

case selection
when "fahrenheit"
  puts "#{convert_to_fahrenheit(celsius)} ºF"
when "kelvin"
  puts "#{convert_to_kelvin(celsius)} K"
else
  puts "I don't know what that is..."
end