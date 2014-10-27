class TagCreator
  # tag_pages works inside this pages -->
  # tag_blocks Works inside this blocks -->
  attr_accessor :tag_pages, :tag_belongs, :tag_has, :pages, :tags

  def initialize
    @tag_pages   = {}
    @tag_belongs = {}
    @tag_has     = {}
    @pages       = {}
    @tags        = {}
  end

  def create_blocks(arr)
    @tags.merge!(self.create(arr, block: true))
  end

  def create_tags(tag_name, arr)
    @tags.merge!(tag_name => self.create(arr).values)
  end

  def create(arr, block: nil)
    arr.hmap do |obj|
      tag = Tag.where(obj).first_or_create
      tag.update_attribute(:page_ids, @tag_pages.map { |k| @pages[k] })

      tags = []
      @tag_belongs.map { |k| @tags[k] }.compact.map { |a| a.kind_of?(Array) ? a.map { |i| tags.push(i) } : tags.push(a) }
      tag.update_attribute(:block_ids, tags)

      tags = []
      @tag_has.map { |k| @tags[k] }.compact.map { |a| a.kind_of?(Array) ? a.map { |i| tags.push(i) } : tags.push(a) }
      tag.update_attribute(:tag_ids, tags) if block

      [obj[:tag_name], tag.id]
    end
  end
end