require 'sinatra'
require 'sinatra/reloader'
require 'pry'

MTA = {
  :l_train => ['bedford', '1st ave'],
  :g_train => ['greenpoint', 'nassau'],
  :n_train => ['canal', '8th'],
  :f_train => ['22nd', '2nd']
}

get "/" do 
  erb :index
end

get "/plan" do
  @mta = MTA
  erb :plan
end

get "/plan/:lines" do
  binding.pry
  @stops = MTA[params[:lines].to_sym].join(", ")
  erb :stops
end