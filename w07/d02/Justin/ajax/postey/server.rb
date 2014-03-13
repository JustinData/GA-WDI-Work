require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

posts = [{title: "First Post", content: "OMG STUFF!"}]

get '/' do
	@posts = posts
	erb :index
end

post '/' do
	# pizza = {topppings: ["cheese", "mushrooms"], price: 16.99}
	# JSON(pizza)
	posts << {title: params[:title], content: params[:content]}
	"Post Succeeded"
end