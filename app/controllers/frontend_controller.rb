class FrontendController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :load_data

  def load_data
    @tags  = Tag.order(tag_name: :asc).all.to_json
    @pages = Page.order(name: :asc).all.to_json
  end

end
