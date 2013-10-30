class CostumesController < ApplicationController

  def index
    @index = Costume.all
    render :index
  end


end