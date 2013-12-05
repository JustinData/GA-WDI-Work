class MoviesController < ApplicationController
  
  def index
  end

  def search
    
  end

  def results
    encoded = params[:q]
    render json: HTTParty.get("http://www.omdbapi.com/?s=#{encoded}")
    # query2 = JSON.parse HTTParty.get("http://www.omdbapi.com/?s=#{encoded}")
    # binding.pry
  end

  def create
  end

end