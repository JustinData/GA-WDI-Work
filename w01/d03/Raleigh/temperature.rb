  # Celsius Temperature Converter

  # Definitions
  def convert_to_fahrenheit(temp_cel)
      ((temp_cel*9)/5) + 5
      puts "Your temperature in Fahrenheit is #{temp_cel}°"
  end

  def convert_to_kelvin(temp_cel)
      temp_cel.to_f + 273.15
       puts "Your temperature in Kelvin is #{temp_cel}°"
  end

  puts "Please enter a temperature in Celsius: "
  temp_cel = gets.chomp.to_i

  puts "Do you want to convert the temperature to (F)ahrenheit or (K)elvin?"
  convert = gets.chomp.capitalize

  if convert == "Fahrenheit" || convert == "F"
    convert_to_fahrenheit(temp_cel)
  elsif convert == "Kelvin" || convert == "K"
    convert_to_kelvin(temp_cel)
  else
    puts "I'm sorry you did not enter Fahrenheit or Kelvin."
  end
