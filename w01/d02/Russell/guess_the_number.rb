puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

answer = get_answer_from_user

secret = rand(10)

while secret != answer
if answer > secret
      puts "Guess lower!"
      answer = gets.chomp.to_i

 elsif answer < secret
 	puts "Guess higher!"
 	answer = gets.chomp.to_i

 end

 if answer == secret
 	puts "How did you know?"
 end

