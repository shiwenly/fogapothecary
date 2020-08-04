class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end


  def new

  end

  def create

  end

  def edit

  end

  def update

  end


end
