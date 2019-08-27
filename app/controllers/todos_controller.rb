class TodosController < ApplicationController
  def index
    @todos = current_user.todos.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = todo.new(todo_params)

    if @todo.save
      redirect_to todos_path
    else
      render 'new'
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :description)
  end
  
end
