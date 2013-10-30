class CostumesController < ApplicationController

  def index
    @costume = Costume.all
    render :index
  end

  def new
    @costume = Costume.new(name, image)
    render :new
  end

  def show
    @costume = Costume.find(params[:id])
  end
end