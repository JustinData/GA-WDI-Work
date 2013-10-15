class ActorsController < ApplicationController
  
  # display all the actors
  def index
    @actors = Actor.all 
    render :index
  end
end

