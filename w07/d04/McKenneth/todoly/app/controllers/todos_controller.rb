class TodosController < ApplicationController

  def index
    @tasks = Todo.all
    render :index
  end
  def update
    @tasks = Todo.find(params[:id])
  end
end