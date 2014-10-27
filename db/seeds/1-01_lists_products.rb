# Product Blocks
@tag_creator.tag_pages   = @tag_creator.pages.keys
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_products, :tags_images, :images, :option_types, :variant, :taxons, :promotions, :properties]
@tag_creator.create_blocks([{:tag_name => :products}])