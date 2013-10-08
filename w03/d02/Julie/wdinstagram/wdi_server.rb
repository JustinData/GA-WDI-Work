require 'sinatra'
require 'pry'
require 'active_record'
require 'sinatra/reloader'

#the class Entry is now synched with the sandbox database
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Julie",
    :password => "",
    :database => "sandbox"
    )

require_relative './models/wdi_entry'


# get "/guest_book" do
#   @entries = Entry.all
#   erb :index
# end
get "/" do
  erb :index
end

get "/photos" do
  @entries = Entry.all
  erb :photo
end


get "/photos/new" do
  erb :new
end


get "/photos/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

# post "/guest_book" do
#   entry = Entry.new(comment: params[:comment], name: params[:name])
#   entry.save
#   redirect "/guest_book/#{entry.id}"
# end
post "/photos" do
   entry = Entry.new(author: params[:author], photo: params[:photo], pdate: params[:date])
   entry.save
    binding.pry
   redirect "/photos/#{entry.id}"
end