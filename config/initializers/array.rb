class Array
  def hmap(&block)
    Hash[self.map { |o| block.call(o) }]
  end
  def hmap!(&block)
    replace hmap(&block)
  end
end