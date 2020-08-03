class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all.order(created_at: :asc)
    @product_spray = Product.where("category_product = ?", "Spray").order(created_at: :asc)
    @product_mist = Product.where("category_product = ?", "Mist").order(created_at: :asc)
    @product_candle = Product.where("category_product = ?", "Candle").order(created_at: :asc)

  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.statut = "active"
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.statut = "deleted"
    @product.save
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :title,
      :description,
      :title1,
      :description1,
      :title2,
      :description2,
      :price,
      :picture1,
      :category_product,
      :statut
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
