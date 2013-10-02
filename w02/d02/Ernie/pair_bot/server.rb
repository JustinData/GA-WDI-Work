require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"
get( "/" ) do
  erb (:index)
end

get('/pass') do
  erb (:pass)
end

get('/write_test') do
  erb (:write_test)
  
end

get('/refactor') do
  erb (:refactor)
end

get('/write_code') do
  erb (:write_code)
end

get('/new_feature') do
  erb (:new_feature)
end

get('/do_refactor') do
  erb (:do_refactor)
end