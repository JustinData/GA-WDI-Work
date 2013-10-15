class ActorsController < ApplicationController

  # define the index action
  def index
    # returns all of the actors and store in the instance variable @actors
    @actors = Actor.all

    # you don;t have to explicitly state this, but at the beginning it can't hurt!
    render :index
  end

end