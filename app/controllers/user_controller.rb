class UserController < ApplicationController
  def index
    @users = User.all
  end
  def build_user
    @user = User.find(params[:id])
  end
  def add
    build_user
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  def create
    build_user
    @user = User.new(params[:id])
    end
    def edit
      build_user
    @user = User.new(params[:id])
  end
  def delete
    build_user
    @user = User.find(params[:id])
  end
    end
 private
  def user_params
  params.require(:user).permit(:email, :name, :password,
                                :password_confirmation)
end


