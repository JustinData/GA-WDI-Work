def convert_to_fahrenheit_from_celsius(celsius_temp)
  return (celsius_temp *(9/5)) + 32
end

def convert_to_kelvin_from_celsius(celsius_temp)
  return celsius_temp + 273.15
end

def convert_to_celsius_from_fahrenheit(celsius_temp)
  return (celsius_temp *(9/5)) + 32
end

def convert_to_kelvin_from_fahrenheit(celsius_temp)
  return celsius_temp + 273.15
end

def convert_to_fahrenheit(celsius_temp)
  return (celsius_temp *(9/5)) + 32
end

def convert_to_kelvin(celsius_temp)
  return celsius_temp + 273.15
end


puts "What is the temp unit you would like to convert from: (F)ahrenheit, (C)elsius, (K)elvin?"
convert_from = gets.chomp

puts "What is the temp unit you would like to convert to: (F)ahrenheit, (C)elsius, (K)elvin?"
convert_to = gets.chomp