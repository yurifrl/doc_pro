# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_address]
@tag_creator.create_blocks([{:tag_name => :shipping_address}])
@tag_creator.create_blocks([{:tag_name => :bill_address}])