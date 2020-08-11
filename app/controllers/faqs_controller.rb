class FaqsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_journal, only: [:edit, :update, :destroy]

  def index
    @faqs = Faq.where("statut = ?", "active" ).order(created_at: :asc)
  end

  def show
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)
    @faq.user_id = current_user.id
    @faq.statut = "active"
    if @faq.save
      redirect_to faqs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @faq.update(faq_params)
      redirect_to faqs_path
    else
      render :edit
    end
  end

  def destroy
    @faq.statut = "deleted"
    @faq.save
    redirect_to faqs_path
  end

  private

  def faq_params
    params.require(:faq).permit(
      :question,
      :answer,
    )
  end

  def set_faq
    @faq = Faq.find(params[:id])
  end
end
