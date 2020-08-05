class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @page = Page.last
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
  end


  def new
  end

  def create
  end

  def edit
    @page = Page.last
    @products = Product.where("statut = ?", "active" ).order(created_at: :asc)
  end

  def update
    @products = Product.where("statut = ?", "active" ).order(created_at: :asc)
    @page = Page.last
    if @page.update(page_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def page_params
    params.require(:page).permit(
      :banner_pic,
      :title,
      :description,
      :rounded_pic,
      :separation_pic,
      :title1,
      :description1,
      :square_pic,
      :title2,
      :description2,
      :title3,
      :description3,
      :benefit1,
      :benefit2,
      :benefit3,
      :benefit4,
      :user_id,
      :product1,
      :product2,
      :product3,
      :product4,
    )
  end

end
