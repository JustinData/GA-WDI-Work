puts "How much was your meal?"
meal_price = gets.chomp.to_i

puts "What is the tax percentage (in exact decimals)?"
tax_percentage = gets.chomp.to_i

puts "What percentage would you like to tip (in exact decimals)? "
tip_amount_preference = gets.chomp.to_i

puts "Your total is #{meal_price + (meal_price * tax_percentage) + (meal_price * tip_amount_preference)}"