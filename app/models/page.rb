class Page < ActiveRecord::Base
  belongs_to :content
  has_and_belongs_to_many :tags

  def display_name
    "#{name}.html.curly"
  end
end
