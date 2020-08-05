class JournalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_journal, only: [:edit, :show, :update, :destroy]

  def index
    @journals = Journal.where("statut = ?", "active" ).order(created_at: :asc)
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
  end

  def show
    @default_pic = "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user_id = current_user.id
    @journal.statut = "active"
    if @journal.save
      redirect_to journal_path(@journal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @journal.update(journal_params)
      redirect_to journal_path(@journal)
    else
      render :edit
    end
  end

  def destroy
    @journal.statut = "deleted"
    @journal.save
    redirect_to journals_path
  end

  private

  def journal_params
    params.require(:journal).permit(
      :title,
      :description,
      :picture1,
      :picture2,
      :picture3,
      :picture4,
    )
  end

  def set_journal
    @journal = Journal.find(params[:id])
  end
end
