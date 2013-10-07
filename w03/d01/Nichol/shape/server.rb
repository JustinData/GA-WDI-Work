require "sinatra"
require "sinatra/reloader"
require "pry"






get "/?" do
    @number = 1
    erb :square
end

get "/multiple/?" do
    @number = params[:num].to_i
    erb :square
end
