# frozen_string_literal: true

class TariffGroupsController < ApplicationController
  before_action :bundle_tariff_group, only: %i[show edit update destroy]

  def index
    @tariff_group = TariffGroup.all
  end

  def new
    @tariff_group = TariffGroup.new
  end

  def update
    if @tariff_group.update(tariff_group_params)
      redirect_to tariff_groups_path
    else
      render 'edit'
    end
  end

  def destroy
    @tariff_group.destroy
    redirect_to tariff_groups_path
  end

  def create
    @tariff_group = TariffGroup.new(tariff_group_params)
    if @tariff_group.save
      redirect_to tariff_groups_path
    else
      render :new
    end
  end

  private

  def bundle_tariff_group
    @tariff_group = TariffGroup.find(params[:id])
  end

  def tariff_group_params
    params.require(:tariff_group).permit(:name)
  end
end
