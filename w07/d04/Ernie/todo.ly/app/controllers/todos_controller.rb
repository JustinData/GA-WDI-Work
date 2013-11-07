class TodosController < ApplicationController
  
  def index
    @todos = Todo.all
  end

  def update
    @todos = Todo.find(params[:id])
    @todos.save
    render json: @todo
  end

end