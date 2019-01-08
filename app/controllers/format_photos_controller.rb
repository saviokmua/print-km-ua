# frozen_string_literal: true

class FormatPhotosController < ApplicationController
  before_action :bundle_format_photo, only: %i[show edit update destroy]

  def index
    @format_photo = FormatPhoto.all
  end

  def new
    @tformat_photo = FormatPhoto.new
  end

  def update
    if @format_photo.update(format_photo_params)
      redirect_to format_photos_path
    else
      render 'edit'
    end
  end

  def destroy
    @format_photo.destroy
    redirect_to format_photos_path
  end

  def create
    @format_photo = FormatPhoto.new(format_photo_params)
    if @format_photo.save
      redirect_to format_photos_path
    else
      render :new
    end
  end

  private

  def bundle_format_photo
    @format_photo = FormatPhoto.find(params[:id])
  end

  def format_photo_params
    params.require(:format_photo).permit(:name)
  end
end
