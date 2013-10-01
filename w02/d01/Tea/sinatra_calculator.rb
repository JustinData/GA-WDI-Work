require 'sinatra'
calculations = {}

get "/" do
  "Welcome to Sinatra's Calculator App!"
end

get "/calculator" do
  "Here are past calculations:\n#{calculations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculations[id]
  if entry
    entry
  else
    "Nope, ID not found. Sorry, kinda."
  end
end

post "/calculator/add" do
    last_id = calculations.keys.count
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f 
    calculations[last_id + 1] = "#{num1} + #{num2} = #{num1 + num2}"
end

post "/calculator/subtract" do
    last_id = calculations.keys.count
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f 
    calculations[last_id + 1] = "#{num1} - #{num2} = #{num1 - num2}"
end

post "/calculator/divide" do
    last_id = calculations.keys.count
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f 
    calculations[last_id + 1] = "#{num1} / #{num2} = #{num1 / num2}"
end

post "/calculator/multiply" do
    last_id = calculations.keys.count
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f 
    calculations[last_id + 1] = "#{num1} / #{num2} = #{num1 * num2}"
end

delete "/calculator/:id" do
  id = params[:id].to_i
  calculations.delete(id)
end






