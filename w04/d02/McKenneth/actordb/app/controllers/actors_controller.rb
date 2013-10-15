class ActorsController < ApplicationController
  def index
    @actor = Actor.all
    
    render :index
  end
 
end