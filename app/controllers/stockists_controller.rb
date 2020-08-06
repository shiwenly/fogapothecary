class StockistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_product, only: [:update, :destroy]

  def index
    @stockists = Stockist.where("statut = ? AND category = ?", "active", "Stockist" ).order(created_at: :asc)
    @online_stores = Stockist.where("statut = ? AND category = ?", "active", "Online Store" ).order(created_at: :asc)
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    @cities = City.all
  end

  def show
  end

  def new
    @stockist = Stockist.new
  end

  def create
    @stockist = Stockist.new(stockist_params)
    @stockist.user_id = current_user.id
    @stockist.statut = "active"
    if @product.save
      create_city
      redirect_to stockist_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @stockist.update(stockist_params)
      create_city
      redirect_to stockists_path
    else
      render :edit
    end
  end

  def destroy
    @stockist.statut = "deleted"
    @stockist.save
    redirect_to stockists_path
  end

  def create_city
    @stockists = Stockist.all
    @stockists.each do |stockist|
      city = City.find_or_create_by( name: stockist.city)
    end
  end

  private

  def stockist_params
    params.require(:stockist).permit(
      :category,
      :name,
      :city,
      :website,
    )
  end

  def set_product
    @stockist = Stockist.find(params[:id])
  end
end
