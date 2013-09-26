#correct possible input for main menu
good_input = ["b", "a", "q"]

#input that will also work
ok_input = {"basic" => "b", "advanced" => "a", "quit" => "q"}

#prints initial menu for calculator
def menu(input_list, map_input)
  puts "(b)asic, (a)dvanced, or (q)uit:"
  request = gets.chomp.downcase
  while request != (input_list[0] ||  input_list[1] || input_list[2] )
    mapped_request = map_input[request]
    if mapped_request != nil
      request = mapped_request
    else
      puts "Please enter 'b', 'a', or 'q'"
      request = gets.chomp.downcase
    end
  end
  return request
end

#prints the basic calulator menu prompt a/s/m/d
def basic_calc
        print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
        return gets.chomp.downcase
end

#prints the advanced calculator menu 
def advanced_calc
print "(p)ower, (s)qrt: "
end

#gets two numbers from the user
  def get_two_numbers
    puts "give me a number"
    number1 = gets.chomp.to_i
    puts "give me another number"
    number2 = gets.chomp.to_i
    both_numbers_output = [number1, number2]
  end

  # response = menu(good_input, ok_input)

  # case response
  #   when "b"
  #     #prints add/sub/mult/etc....
  #     basic_calc
  #     #gets two numbers from the user
  #     both_numbers = get_two_numbers
  #     if request == "a"
  #      puts "your answer is #{both_numbers[0] + both_numbers[1]}"
  #     elsif request == "s"
  #       puts "your answer is #{both_numbers[0] - both_numbers[1]}"
  #     elsif request == "m"
  #       puts "your answer is #{both_numbers[0] * both_numbers[1]}"
  #     elsif request == "d"
  #       puts "your answer is #{both_numbers[0] / both_numbers[1]}"
  #     end
  #   when "a"
  #     advanced_calc
  # end

 



######### DEFINITIONS OVER....PROGRAMS BEGIN #########
response = menu(good_input, ok_input)


#This process should continue until the user selects a quit option from the menu
while response != 'q'
  if response == "b"
    basic_calc
  elsif response == "a"
    advanced_calc
  end
end