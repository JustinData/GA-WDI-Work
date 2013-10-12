require 'sinatra'
require 'sinatra/reloader'
# require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'

  require_relative './models/broadway.rb'

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "broadway_db"
  )

# Welcome to Broadway.ly!

# after do
#   ActiveRecord::Base.clear_active_connections!
# end

get "/" do
  @greeting = "Welcome to Broadway.ly!"
  erb :index
end

# Index of all shows
# with links to individual shows

get "/shows" do
  @shows = Show.all
  erb :"shows/show_index"
end

# Form to create new show

get "/shows/new" do

  erb :"shows/show_new"
end

# Individual show page
# Links to list of all songs `/shows/:id/songs`
# and form to create new songs `/shows/:id/songs/new`

get "/shows/:id" do
  @show = Show.find(params[:id])

  erb :"shows/show_show"
end

# Create action - new show - redirects to that
# show

post "/shows" do
 show = Show.new({title: params[:title], year: params[:year], composer: params[:composer], img_url: params[:img_url]})
 show.save
  redirect "/shows/#{show.id}" 
end

# Form to create new songs


get "/shows/:id/songs/new" do
end

# Create action - new songs for a show - redirects
# to that song

post "/shows/:id/songs" do
end

# Lists all songs from the show

get "/shows/:id/songs" do
end

# Shows just one song from the show

get "/shows/:show_id/songs/:song_id" do
end





