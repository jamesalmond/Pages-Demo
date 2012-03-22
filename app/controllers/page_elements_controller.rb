class PageElementsController < ApplicationController
  def new
    @page = Page.find(params[:page_id])
    @element = PageElement.build(params[:type])
  end
  def create
    @page = Page.find(params[:page_id])
    @element = PageElement.build(params[:type], params[:element])
    @page.page_elements << @element
    @page.save!
    redirect_to edit_page_path(@page)
    
  end
end
