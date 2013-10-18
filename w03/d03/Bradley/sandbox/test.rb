require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.crunchbase.com/company/facebook")) do |config|
  config.noblanks.strict
end

# funding_col = "<h2>No funding information found!</h2>"

# i = 2

while i < 8
  funding_col = doc.css("div.col1_content")[i]
   if funding_col.to_s.include?("FUNDING")
    funding_col
    i = 9
  else
    i +=1
  end
end

funding_col = doc.css("div.col1_content")[6]
 



# funding_hash = {}

=begin

hash structure:

funding_hash = { :round1, => round_hash, :round2, => round_hash}

round_hash = { :investors => investors_array, :date => date, :amount = amount }

=end

# rows = []

# funding_col.css("tr").each do |row|
#   rows << row
# end

