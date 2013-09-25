puts "What is the price of the meal?"
price = gets.chomp.to_f

puts "What is the tax as a percentage terms?"
tax = gets.chomp.to_f * (0.001)

puts "How much would you like to tip in percentage terms?"
tip = gets.chomp.to_f * (0.001)

puts "You are paying $#{price + (price * tax) + (price * tip)}"