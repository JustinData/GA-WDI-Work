require 'open-uri'
require 'nokogiri'

#http://www.crunchbase.com/companies

companies = Nokogiri::HTML(open('http://www.crunchbase.com/companies'))