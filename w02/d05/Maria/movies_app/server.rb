require 'httparty'
require 'json'
require 'pry'

name = "the room"

#name = params[:title].gsub(" ", "+")


url = "http://www.ombapi.com/?t=#{name}"

response = HTTParty.get(url)

parsed = JSON(response)
binding.pry
