require 'sinatra'
require 'pry'
require 'active_record'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "nichol",
  :password => "",
  :database => "sandbox_db"
  )

require_relative './models/entry'

#index - display all pictures in the database
get "/" do
    @entries = Entry.all 
    erb :index
end

get "/new/?" do
    erb :new
end
