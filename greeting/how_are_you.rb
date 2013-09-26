def how_are_you
  puts "How are you?"
  answer = gets.chomp
  if answer == "good"
    puts "Great!"
  else 
    puts "Go eat some ice cream."
  end 
end 