class EntriesController < ApplicationController
  def index
    @all = Entry.all
    render :index
  end

  def new
    render :new
  end
  def create
  end
  def show
  end
end