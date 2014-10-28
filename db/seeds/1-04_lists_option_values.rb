# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_option_values, :shipping_address, :bill_address]
@tag_creator.create_blocks([{:tag_name => :option_values}])