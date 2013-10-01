require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do
	"this is the output"
end

get "/nichol" do
	erb :nichol
end


