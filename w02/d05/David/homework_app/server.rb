require 'httparty'
require 'json'
require 'pry'

name = "beetlejuice"

name = name.gsub(" ", "+")

url = "http://www.omdbapi.com/?t=#{name}"

response = HTTParty.get(url)
parsed = JSON(response)

puts parsed["Year"]
puts parsed["Poster"]
puts parsed["Title"]