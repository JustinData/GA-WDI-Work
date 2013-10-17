class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
    render :index
  end
  
  def show
    @artist = Artist.find(params[:id])
    render :show
  end
end