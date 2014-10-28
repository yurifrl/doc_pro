class Tag < ActiveRecord::Base
  enum type_of: {  object: 0, block: 1 }
  validates :tag_name, uniqueness: true

  has_and_belongs_to_many :pages
  has_and_belongs_to_many :contexts
  has_many :parameters

  accepts_nested_attributes_for :parameters, :allow_destroy => true
  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :contexts

  # Has
  has_many :tag_relations, foreign_key: :source_tag_id
  has_many :tags, through: :tag_relations, source: :target_tag

  # Belongs to
  has_many :block_relations, class_name: 'TagRelation', foreign_key: :target_tag_id
  has_many :blocks, class_name: 'Tag', through: :block_relations, source: :source_tag

  def to_curly(full: false, close: false)
    if parameters && full
      aux = " #{parameters.map{|p| "#{p.name}=\"#{p.default}\""}.join(",").gsub(',', ' ')}"
    else
      aux = ""
    end
    if block? && close
      "{{*#{tag_name}#{aux}}}
      {{/#{tag_name}}"
    else
      "{{#{tag_name}#{aux}}}"
    end
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
