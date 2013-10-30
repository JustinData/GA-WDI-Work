class CostumesController < ApplicationController

  def index
    @index = Costume.all
    render :index
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    whitelisted = params.require(:costume).permit([:name, :image])
    costume = Costume.new(whitelisted)

    costume.save

    redirect_to "/"
  end

end