require 'sinatra'

calculations = {}



get("/") do
  "Welcome to the coolest calculator app evahhh!"
end

get("/calculator") do
  calculations.values.join("\n")
end

get("/calculator/:id") do
  if calculations.keys.include?(id)
    "Calculation #{id} : #{calculations[id]}"
  else
    "Sorry, that's not a valid ID. Try again."
  end
end

get("/calculator/add") do
end

post("/calculator/add") do
  if calculations.keys.length == 0
    last_id = 0
  else
    last_id = calculations.keys.max
  end
  id = params[:id].to_i
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculations[last_id + 1] = "#{num1} + #{num2} = #{num1 + num2}"
end

get("/calculator/subtract") do
end

post("/calculator/subtract") do
  if calculations.keys.length == 0
    last_id = 0
  else
    last_id = calculations.keys.max
  end
  id = params[:id].to_i
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculations[last_id + 1] = "#{num1} - #{num2} = #{num1 - num2}"
end

get("/calculator/multiply") do
end

post("/calculator/multiply") do
  if calculations.keys.length == 0
    last_id = 0
  else
    last_id = calculations.keys.max
  end
  id = params[:id].to_i
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculations[last_id + 1] = "#{num1} * #{num2} = #{num1 * num2}"
end

get("/calculator/divide") do
end

post("/calculator/divide") do
  if calculations.keys.length == 0
    last_id = 0
  else
    last_id = calculations.keys.max
  end
  id = params[:id].to_i
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calculations[last_id + 1] = "#{num1} / #{num2} = #{num1 / num2}"
end
