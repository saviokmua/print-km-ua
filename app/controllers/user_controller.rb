class UserController < ApplicationController
  def index
    @users = User.all
    end
  def add
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user[:id])
     user.save
    redirect_to @user
  end
  def edit
    @user = User.new(params[:id])
  end
  def delete
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path
  end
 # private
  #def user_params
  #params.require(:users).permit(:email, :name, :admin)
#end
end

