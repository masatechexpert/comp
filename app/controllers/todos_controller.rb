class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = current_user.todos.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path
    else
      render 'new'
    end
  end

  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'ToDoは削除されました' }
      format.json { head :no_content }
    end
  end

  private
    def set_todo
        @todo = current_user.todos.find(params[:id])
      end
      
    def todo_params
      params.require(:todo).permit(:title, :description, :user_id)
    end
  
end
