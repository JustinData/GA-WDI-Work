require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "wdi",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'


post "/guest_book" do
 
end


get "/guest_book" do
  
end


get "/guest_book/:id" do
  
end

post "/guest_book" do
  
end


put "/guest_book/:id" do
  
end

delete "/guest_book/:id" do

end
