require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "macadocious",
  password: "",
  database: "sandbox"
  )

require_relative './models/entry'

  get("/welcome") do 
    @pictures = Picture.all 
    erb :index
  end

  get("/welcome/add") do
    erb :add
  end