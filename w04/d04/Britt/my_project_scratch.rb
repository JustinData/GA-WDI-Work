def gimme_da_release_notes(search_term)
  query = search_term.gsub(" ","+")
  response = HTTParty.get("https://itunes.apple.com/search?term=#{query}&entity=software&limit=1")
  response["results"][0]["releaseNotes"]
end

def gimme_da_id(search_term)
  query = search_term.gsub(" ","+")
  response = HTTParty.get("https://itunes.apple.com/search?term=#{query}&entity=software&limit=1")
  response["results"][0]["artistId"]
end

# Nokogiri
#
# CSS selectors: .app-version-note p , h5