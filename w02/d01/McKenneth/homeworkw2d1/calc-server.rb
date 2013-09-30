require 'sinatra'

calculator = {1 => 34, 2 => 3}

get("/") do
  "Welcome to the Calculator!
  Here's how it works:
  ADD : put in /calculator/add/num1/num2
  SUBTRACT : put in /calculator/sub/num1/num2
  MULTIPLY : put in /calculator/multi/num1/num2
  DIVIDE : put in /calculator/divide/num1/num2
  To see a list of all the calculations done just type /calculator"
end

get("/calculator") do
  calcs = calculator.values.join("  |-|  ")
  "Here's a list of all the calculations done so far:
  #{calcs}"
end

get("/calculator/add/:num_1/:num_2") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  sum = num_1 + num_2
  key = calculator.keys.max + 1
  calculator[key] = sum
  "The sum of those numbers is : #{sum}" 
end
