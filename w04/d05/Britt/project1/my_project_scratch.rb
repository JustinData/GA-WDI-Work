require 'httparty'
require 'pry'

# TO DO
  # explore diff b/t artistName and sellerName
  # diff b/t wrapperType vs kind
  # diff b/t artworkUrl100 & artworkUrl512
  # diff b/t trackContentRating & contentAdvisoryRating
  # rename instance vars accordingly

# In production, the following method would only run once a 
# successful user search has been performed, and the
# user has selected an app from the results. Then, 
# using 'lookup' rather than 'search', the id from the
# user-selected app would be passed, and the following
# instance variables would be assigned.

# searches for first result matching the search string
# using Apple's iTunes Search API & HTTParty. Parses the
# response into semantic instance variables.
def app_search search_string
  query = search_string.gsub(" ","+")
  response = HTTParty.get("https://itunes.apple.com/search?term=#{query}&entity=software&limit=1")

  if response["resultCount"] == 0
    "No results found."
  else 
    res = response["results"][0]
    @app_id = res["trackId"]
    @app_name = res["trackName"]
    @store_url = res["trackViewUrl"]
    @app_icon = res["artworkUrl512"] # artworkUrl100, artworkUrl60

    @screenshots = res["screenshotUrls"]
    @screenshots_ipad = res["ipadScreenshotUrls"]

    @developer = res["artistName"]
    @developer_company = res["sellerName"] # legal entity of software provider
    @developer_company_website = res["sellerUrl"]

    @price = res["price"]
    @currency = res["currency"] # probably don't need
    @formatted_price = res["formattedPrice"] # reports "Free" if 0.0

    @current_version = res["version"]
    @current_release_notes = res["releaseNotes"]
    @description = res["description"]

    @current_user_rating = res["averageUserRatingForCurrentVersion"]
    @current_user_rating_count = res["userRatingCountForCurrentVersion"]
    @total_user_rating = res["averageUserRating"]
    @total_user_rating_count = res["userRatingCount"]

    @content_rating = res["contentAdvisoryRating"] # "trackContentRating"
    @categories = res["genres"] # array of app store catgories
    @category_ids = res["genreIds"] # array of corresponding ids; not sure how I'd use, but could be useful?
    @primary_category = res["primaryGenreName"]
    @primary_category_id = res["primaryGenreId"]
    @game_center_enabled = res["isGameCenterEnabled"] # Boolean

    @launch_date = res["releaseDate"]
    @supported_languages = res["languageCodesISO2A"] # array of ISO 639-1 two-character language codes

    @features = res["features"] # array, incl. if Universal
    @kind = res["kind"] # wrapperType
    @file_size_bytes = res["fileSizeBytes"]

    @app_name
  end
end

binding.pry

# response["results"][0].keys
# => ["kind", "features", "supportedDevices", "isGameCenterEnabled", "artistViewUrl", "artworkUrl60", "screenshotUrls", "ipadScreenshotUrls", "artworkUrl512", "artistId", "artistName", "price", "version", "description", "currency", "genres", "genreIds", "releaseDate", "sellerName", "bundleId", "trackId", "trackName", "primaryGenreName", "primaryGenreId", "releaseNotes", "formattedPrice", "wrapperType", "trackCensoredName", "trackViewUrl", "contentAdvisoryRating", "artworkUrl100", "languageCodesISO2A", "fileSizeBytes", "sellerUrl", "averageUserRatingForCurrentVersion", "userRatingCountForCurrentVersion", "trackContentRating", "averageUserRating", "userRatingCount"]