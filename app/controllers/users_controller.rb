# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :bundle_user, only: %i[show edit update destroy]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def bundle_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :tariff_id)
  end
end
