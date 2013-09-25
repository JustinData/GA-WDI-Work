puts "How much was your meal?"
price = gets.chomp.to_i
puts "What is the tax percentage on your bill?"
tax = gets.chomp.to_i
puts "What percentage would you like to tip?"
percent_tip = gets.chomp.to_i


def find_total_with_tax (price, tax)
   tax_amount = (price * tax) / 100
   $total_with_tax = (tax_amount + price)
   puts total_with_tax
end 




def find_total_with_tip (total_with_tax)
  tip_amount = ($total_with_tax * percent_tip) / 100
  total_with_tip = (tip_amount + total_with_tax)
end

find_total_with_tax(price, tax)
find_total_with_tip ($total_with_tax)

puts "Your bill is #{total_with_tip}"
