class TagRelation < ActiveRecord::Base
  # source_tag_id :integer
  # target_tag_id :integer
  belongs_to :source_tag, class_name: "Tag"
  belongs_to :target_tag, class_name: "Tag"
end
