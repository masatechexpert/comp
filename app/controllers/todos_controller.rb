class TodosController < ApplicationController
  def index
    @todos = current_user.todos.all
  end

  def new
    @todo = Todo.new
  end
end
