require 'httparty'

response = HTTParty.get('http://www.h4w5.co/')
puts response.body