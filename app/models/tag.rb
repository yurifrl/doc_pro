class Tag < ActiveRecord::Base
  enum type_of: { array: 0, object: 1 }

  has_and_belongs_to_many :pages
  has_and_belongs_to_many :contexts
  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :contexts

  # Has
  has_many :tag_relations, foreign_key: :source_tag_id
  has_many :tags, through: :tag_relations, source: :target_tag
  #
  # # Belongs to
  has_many :block_relations, class_name: 'TagRelation', foreign_key: :target_tag_id
  has_many :blocks, class_name: 'Tag', through: :block_relations, source: :source_tag
end
