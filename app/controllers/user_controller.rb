class UserController < ApplicationController

  def index
    @users = User.all
    end
  def add
  end
  def create
  end

  def edit
 @user = User.find(params[:id])
  end

  def delete

  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :admin)
  end
end
