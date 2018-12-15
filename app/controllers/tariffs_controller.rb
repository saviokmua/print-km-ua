class TariffsController < ApplicationController
  def index
    @tariff = Tariff.all
  end
  def new
    @tariff = Tariff.new
  end
  def show
    bundle_tariff
  end
  def edit
    bundle_tariff
  end
  def update
    bundle_tariff
    if @tariff.update(tariff_params)
      redirect_to @tariff
    else
      render 'edit'
    end
  end
  def destroy
    bundle_tariff
    @tariff.destroy
    redirect_to tariffs_path
  end
  def create
    # render plaine: params[:post].inspect
    @tariff = Tariff.new(tariff_params)
    if @tariff.save
      redirect_to tariffs_path
    else
      render 'new'
    end
  end
  private
  def bundle_tariff
    @tariff = Tariff.find(params[:id])
  end
  def tariff_params
    params.require(:tariff).permit(:name, :price)
  end
end