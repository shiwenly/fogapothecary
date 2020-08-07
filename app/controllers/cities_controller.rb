class CitiesController < ApplicationController

  before_action :set_product, only: [:destroy]


  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.name = @city.name.upcase
    if @city.save
      redirect_to stockists_path
    else
      render :new
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to stockists_path
  end

  private

  def city_params
    params.require(:city).permit(
      :name,
    )
  end

  def set_product
    @city = City.find(params[:id])
  end
end
