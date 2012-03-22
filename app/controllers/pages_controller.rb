class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    page = Page.create!(params[:page])
    redirect_to edit_page_path(page)
  end

  def edit
    @page = Page.find(params[:id])
  end
end
