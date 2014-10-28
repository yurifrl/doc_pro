class TagsController < ApplicationController
  # GET /tags/1
  # GET /tags/1.json
  def show
    respond_to do |format|
      format.js {@tag = Tag.where(tag_name: params[:id]).limit(1).first}
    end
  end
end
