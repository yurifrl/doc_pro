class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.json
  def show
    @tags  = Tag.all.to_json
    @pages = Page.all.to_json
    @page  = Page.find(params[:page_name])
    respond_to do |format|
      format.js { @page }
      format.html { render :show }
    end
  end

  def download
    page = Page.where(name: params[:page_name]).first
    # Render
    if File.exists? File.join("lib/views/#{page.file_path}.html.curly")
      file  = File.open(File.join("lib/views/#{page.file_path}.html.curly"), 'rb')
      send_file = file.read
      file.close
      send_data send_file, type: 'text/html; charset=utf-8', :filename => "#{page.name}.html.curly"
    else
      render nothing: true, status: 404
    end
  end


end