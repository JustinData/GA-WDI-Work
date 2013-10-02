require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"
get( "/" ) do
  erb :index
end

get( "/something/:data_point" ) do

  if params[:data_point] == "somewhere"
    @link_url = "somewhere.com"
    erb( :data )
  else
    @link_url = "/"
    erb( :data )
  end

end
