require 'sinatra'

get "/" do
  "Welcome to Sinatra's Calculator App!"
end
last_id = 0
calculations = {}

get "/calculator" do
  "Here are past calculations:\n#{calculations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculations[id]
end

post "/calculator/add" do
  last_id = calculations.keys.max
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i 
  "#{num1} + #{num2} = #{num1 + num2}"
end





