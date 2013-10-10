require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do 
	@@placekitten = "http://PlaceKitten.com/#{rand(100..400)}/#{rand(100.400)}"
	erb :home
end

post '/vote/:vote' do
	vote = params[:vote] #either meow or not_meow

	db_conn = PG.connect( dbname: "sandbox" )
	query_str = "INSERT INTO morning_kittens (url, is_meow) "
	query_str += "VALUES ('#{@@placekitten}', '#{vote}');"
	db_conn.exec( query_str )
	
	db_conn.close
	redirect('/')
end

get '/meow' do 
	db_conn = PG.connect( dbname: "sandbox" )
	query_str = "SELECT url FROM morning_kittens "
	query_str += "WHERE is_meow = 'meow';"

	@urls = db_conn.exec( query_str )

	db_conn.close
	erb :meow
end