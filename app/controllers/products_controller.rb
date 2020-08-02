class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

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
      redirect_to product_path(@product)
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
      :description,
      :benefit1,
      :benefit2,
      :benefit3,
      :benefit4,
      :price_small,
      :price_large,
      :picture1,
      :picture2,
      :picture3,
      :category_product,
      :statut
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
