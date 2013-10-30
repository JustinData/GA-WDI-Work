class CostumesController < ApplicationController


  def index
    @costumes = Costume.all
    render :index
  end
  def show
    render :show
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    @costume = Costume.new(costume_params)
  end
end

private
  def costume_params
    params.require(:costume).permit(:name, :image)
  end