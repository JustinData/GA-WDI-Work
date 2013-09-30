require 'sinatra'

calculator = {0 => "INITIALIZED"}

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

post("/calculator/add") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  sum = num_1 + num_2
  key = calculator.keys.max + 1
  calculator[key] = "The sum of #{num_1} and #{num_2} is : #{sum}" 
  "The sum of #{num_1} and #{num_2} is : #{sum}" 
end

post("/calculator/sub") do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  net = num_1 - num_2
  key = calculator.keys.max + 1
  calculator[key] = "The net of #{num_1} minus #{num_2} is : #{net}"
  "The net of #{num_1} minus #{num_2} is : #{net}"
end

