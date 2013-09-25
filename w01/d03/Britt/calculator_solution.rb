# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
puts "(b)asic, (a)dvanced, or (q)uit:"
$request = gets.chomp.downcase
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
    if $request == "b"
      def basic_calc
      print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
      end
    basic_calc
    $request2 = gets.chomp.downcase
      if $request2 == "a"
        puts "give me a number"
        number1 = gets.chomp.to_i
        puts "give me another number"
        number2 = gets.chomp.to_i
          puts "your answer is #{number1 + number2}"
        end
       if $request2 == "s"
          puts "give me a number"
          number3 = gets.chomp.to_i
          puts "give me another number"
          number4 = gets.chomp.to_i
          puts "your answer is #{number3 - number4}"
    end
           if $request2 == "m"
          puts "give me a number"
          number5 = gets.chomp.to_i
          puts "give me another number"
          number6 = gets.chomp.to_i
          puts "your answer is #{number5 * number6}"
    end
           if $request2 == "d"
          puts "give me a number"
          number7 = gets.chomp.to_i
          puts "give me another number"
          number8 = gets.chomp.to_i
          puts "your answer is #{number7 / number8}"
        end
  end
# Only tackle these once you get all of the basic_calc operations working
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
     if $request == "a"
        def advanced_calc
        print "(p)ower, (s)qrt: "
      end
    advanced_calc
      request3 = gets.chomp.downcase
    if request3 == "p"
    puts "give me a number"
        number9 = gets.chomp.to_i
        puts "give me another number"
        number10 = gets.chomp.to_i
        puts "your answer is #{number9**number10}"
    end
        if request3 == "s"
        puts "give me a number"
        number11 = gets.chomp.to_i
        puts "your answer is #{Math.sqrt(number11)}"
      end
  end
end
 
 
response = menu
# This process should continue until the user selects a quit option from the menu
while response != 'q'
 
        response = menu
end