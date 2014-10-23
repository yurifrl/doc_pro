class Tag < ActiveRecord::Base
  enum type_of: { array: 0, object: 1 }

  has_and_belongs_to_many :pages
  has_and_belongs_to_many :contexts
  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :contexts
  accepts_nested_attributes_for :tags
end
