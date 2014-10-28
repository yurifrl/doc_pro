# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_orders, :bill_address, :shipping_address]
@tag_creator.create_blocks([{:tag_name => :orders}])