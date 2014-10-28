class TagsController < ApplicationController
  # GET /tags/1
  # GET /tags/1.json
  def show
    @tags  = Tag.all.to_json
    @pages = Page.all.to_json
    @tag = Tag.where(tag_name: params[:tag_name]).limit(1).first
    respond_to do |format|
      format.js {@tag}
      format.html {render :show }
    end
  end
end
