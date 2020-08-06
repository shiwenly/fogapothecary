class PhilosophiesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @philosophy = Philosophy.last
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
  end

  def new
  end

  def create
  end

  def edit
    @philosophy = Philosophy.last
  end

  def update
    @philosophy = Philosophy.last
    if @philosophy.update(philosophy_params)
      redirect_to philosophies_path
    else
      render :edit
    end
  end

  private

  def philosophy_params
    params.require(:philosophy).permit(
      :picture1,
      :title,
      :title1,
      :description,
      :description1,
      :description2,
      :description3,
    )
  end
end
