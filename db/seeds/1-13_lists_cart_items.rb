# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_cart_items, :tags_variants, :tags_orders, :tags_products]
@tag_creator.create_blocks([{:tag_name => :cart_items}])