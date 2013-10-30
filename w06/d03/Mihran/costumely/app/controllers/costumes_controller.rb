class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
    render 'index'
    
  end

  def show
    @costumes = Costume.all

  end



  def new

  end



  def update

  end



  def destroy 

  end






end

