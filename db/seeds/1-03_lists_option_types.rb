# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_option_types, :option_values]
@tag_creator.create_blocks([{:tag_name => :option_types}])