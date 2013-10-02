require 'sinatra'

# Create
# Read
# Update
# Destroy

# user should see a welcome to the calculator app
get "/" do
  print " Welcome to Calc-it "
end

calc_history = []

# user should see all the calculations they've done in the past
get "/calculator" do
  calc_history = calculator.values.join(", ")
  "These are the calculations you've done: #{calcs}"
end

# user can see a specific calculation 

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]

  if entry
    entry
  else
    "That ID is wasn't found"
  end
end

post "/calculator/add" do
  first_num = params[:first_num]
  second_num = params[:second_num]
  result_add = first_num + second_num
  result_add.to_s
  last_id = calculator.keys.max 
  calculator[last_id + 1 ] = result_add
end

post "/calculator/subtract" do 
  first_num = params[:nu]
  second_num = params[:num2]
  result_subtract = first_num - second_num
  result_subtract.to_s
  last_id = calculator.keys.max 
  calculator[last_id + 1 ] = result_subtract
end

post "/calculator/multiply" do
  first_num = params[:first_num]
  second_num = params[:num2]
  result_multiply = first_num * second_num
  result_multiply.to_s
  last_id = calculator.keys.max 
  calculator[last_id + 1 ] = result_subtract
end

post "/calculator/divide" do 
  first_num = params[:num1]
  second_num = params[:num2]
  result_divide = first_num / second_num
  result_divide.to_s
  last_id = calculator.keys.max 
  calculator[last_id + 1 ] = result_divide
end





