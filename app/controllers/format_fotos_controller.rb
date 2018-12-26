# frozen_string_literal: true

class FormatFotosController < ApplicationController
  before_action :bundle_format_foto, only: %i[show edit update destroy]

  def index
    @format_foto = FormatFoto.all
  end

  def new
    @tformat_foto = FormatFoto.new
  end

  def update
    if @format_foto.update(format_foto_params)
      redirect_to format_fotos_path
    else
      render 'edit'
    end
  end

  def destroy
    @format_foto.destroy
    redirect_to format_fotos_path
  end

  def create
    @format_foto = FormatFoto.new(format_foto_params)
    if @format_foto.save
      redirect_to format_fotos_path
    else
      render :new
    end
  end

  private

  def bundle_format_foto
    @format_foto = FormatFoto.find(params[:id])
  end

  def format_foto_params
    params.require(:format_foto).permit(:name)
  end
end