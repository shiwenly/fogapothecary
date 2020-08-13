class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.where("statut = ?", "active" ).order(created_at: :asc)
    @product_spray = Product.where("category_product = ? AND statut = ?", "Spray", "active" ).order(created_at: :asc)
    @product_mist = Product.where("category_product = ?  AND statut = ?", "Mist", "active").order(created_at: :asc)
    @product_candle = Product.where("category_product = ?  AND statut = ?", "Candle", "active").order(created_at: :asc)
    @product_balm = Product.where("category_product = ?  AND statut = ?", "Balm", "active").order(created_at: :asc)
    @product_essential_oil = Product.where("category_product = ?  AND statut = ?", "Essential Oil", "active").order(created_at: :asc)
    @product_banner = Product.where("statut = ?", "banner_product")[0]
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
  end

  def index_in
    @products = Product.where("statut = ?", "active" ).order(created_at: :asc)
    @product_spray = Product.where("category_product = ? AND statut = ?", "Spray", "active" ).order(created_at: :asc)
    @product_mist = Product.where("category_product = ?  AND statut = ?", "Mist", "active").order(created_at: :asc)
    @product_candle = Product.where("category_product = ?  AND statut = ?", "Candle", "active").order(created_at: :asc)
    @product_balm = Product.where("category_product = ?  AND statut = ?", "Balm", "active").order(created_at: :asc)
    @product_essential_oil = Product.where("category_product = ?  AND statut = ?", "Essential Oil", "active").order(created_at: :asc)
    @product_banner = Product.where("statut = ?", "banner_product")[0]
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
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
    if params[:from] == "edit_banner"
      @product = Product.where("statut = ?", "banner_product")[0]
    else
      @product = Product.find(params[:id])
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy

    @product.statut = "deleted"

    @product.save
    redirect_to products_path
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
      :toko_link,
      :shopee_link,
      :name_in,
      :title_in,
      :description_in,
      :title1_in,
      :description1_in,
      :title2_in,
      :description2_in,
      :price_in,
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
