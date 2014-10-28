class LandingsController < ApplicationController
  def index
    @tags  = Tag.all.to_json
    @pages = Page.all.to_json
  end
end