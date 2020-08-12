class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @page = Page.last
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    @products = Product.all.order(created_at: :asc)
    @nb = @products.count
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
      :icone1_pic,
      :icone2_pic,
      :icone3_pic,
      :icone4_pic,
      :title1,
      :description1,
      :description2,
      :icone1_text,
      :icone2_text,
      :icone3_text,
      :icone4_text,
      :user_id,
    )
  end

end
