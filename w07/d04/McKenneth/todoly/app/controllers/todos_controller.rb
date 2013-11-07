class TodosController < ApplicationController

  def index
    @tasks = Todo.all
    render :index
  end
end