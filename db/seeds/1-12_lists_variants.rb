# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_variants, :tags_images, :tags_products, :option_values, :images]
@tag_creator.create_blocks([{:tag_name => :variants}])