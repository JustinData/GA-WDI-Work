class ApplicationController < ActionController::Base
 
get "/wdinstagram/new" do
  erb :new
end

get "/wdinstagram" do
  @entries = Entry.all
  erb :index
end

get "/wdinstagram/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

# Each entry should have a unique id

post "/wdinstagram" do
  entry = Entry.new(name: params[:name], url: params[:url], date_taken: params[:date_taken])
  entry.save
  redirect "/wdinstagram/#{entry.id}"
end

# Expect params[:name] == new_name
put "/wdinstagram/:id" do

end

delete "/wdinstagram/:id" do
 
end


end
