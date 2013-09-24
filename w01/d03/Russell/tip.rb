#Enter the price of your emal
puts "What is the price of your meal?"
price = gets.chomp.to_f
puts "What is the tax percentage of your meal?"
tax = gets.chomp.to_f
puts "What percentage would you like to tip?"
tip = gets.chomp.to_f
puts "Your meal costs #{price + (price * (tax/100)) + (price * (tip/100))}"


