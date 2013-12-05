class WatchlistController < ApplicationController
  def index
  end

  def search
    encoded = URI.encode(params[:title])
    JSON(HTTParty.get("http://www.omdbapi.com/?t=#{encoded}"))
  end
end
