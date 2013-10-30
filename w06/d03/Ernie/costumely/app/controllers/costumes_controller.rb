class CostumesController < ApplicationController

  def new
    @costume = Costume.new
  end

  def create
     @costume = Costume.new
  end

  def index
    @costumes = Costume.all
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

end