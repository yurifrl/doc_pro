class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.json
  def show
    respond_to do |format|
      format.js {@page = Page.find(params[:id])}
    end
  end
end
