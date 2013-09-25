puts "Enter the price of your meal"
price = gets.chomp.to_f
puts "What's the tax where you are?"
tax = gets.chomp.to_f
puts "what percent would you like to tip"
tip = gets.chomp.to_f 
pwt = price + (price *  tax/100)
pwtat = price + pwt + (pwt * tip/100)
total = price + pwt + pwtat
puts "Your total is #{total}"