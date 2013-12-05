class Movie < ApplicationController
  def index
    @movies = Movie.all
    # renders our movies in json so backbone has it in json, not ruby
    render json: @movies
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
