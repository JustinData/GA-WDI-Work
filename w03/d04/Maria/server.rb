require 'sinatra'
require 'sinatra/reloader'
require 'pg'

#pk1 = rand(100..400)
#pk2 = rand(100..400)

#pkURL = "http://placekitten.com/"+"#{pk1}"+"/"+"{pk2}"

get '/' do
  #@kitten_url = pkURL
  @random_kitty = "http://placekitten.com/#{rand(100..400)}/#{rand(100..400)}"
  
  erb :index
end

post '/vote/:vote' do
  db_conn = PG.connect(:dbname =>'sandbox', :host => 'localhost')
  url = params[:url]
  vote = params[:vote]

  if vote == "meow"
    is_meow_vote = true
  else
    is_meow_vote = false
  end

  query_str = "INSERT INTO morning_kittens (url, is_meow) VALUES "
  query_str +="('#{url}',#{is_meow_vote});"

  redirect '/'
end

get '/vote/not_meow' do

end

get '/vote/meow' do

end

