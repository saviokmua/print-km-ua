# frozen_string_literal: true

class TariffsController < ApplicationController
  before_action :bundle_tariff, only: %i[show edit update destroy]

  def index
    @tariff = Tariff.all
  end

  def new
    @tariff = Tariff.new
  end

  def show
  end

  def edit
  end

  def update
    if @tariff.update(tariff_params)
      redirect_to tariffs_path
    else
      render 'edit'
    end
  end

  def destroy
    @tariff.destroy
    redirect_to tariffs_path
  end

  def create
    @tariff = Tariff.new(tariff_params)
    if @tariff.save
      redirect_to tariffs_path
    else
      render :new
    end
  end

  private

  def bundle_tariff
    @tariff = Tariff.find(params[:id])
  end

  def tariff_params
    params.require(:tariff).permit(:tariff_group_id, :format_photo_id, :price)
  end
end
