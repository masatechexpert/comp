class UsersController < ApplicationController

  def create
    user = User.create!(user_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    if @user.update(user_params) && @user.avatar.attach(params[:avatar])
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end