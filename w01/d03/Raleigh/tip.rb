  # Tip Calculator

  puts "What was the price of your meal?"
  price = gets.chomp.to_f

  puts "How much would you like to tip (i.e. 20%): "
  percent = gets.chomp.to_f

  total = price *  (percent/100)

  puts "Your total including tip is $#{total}"