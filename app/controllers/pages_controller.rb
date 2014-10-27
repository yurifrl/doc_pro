class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @tags  = Tag.all
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])
  end
end
