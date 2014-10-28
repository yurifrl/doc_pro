# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:shipping_categories]
@tag_creator.create_blocks([{:tag_name => :shipping_categories}])