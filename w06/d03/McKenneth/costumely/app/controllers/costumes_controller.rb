class CostumesController < ApplicationController


  def index
    @costumes = Costume.all
    render :index
  end
  def show
    render :show
  end

end