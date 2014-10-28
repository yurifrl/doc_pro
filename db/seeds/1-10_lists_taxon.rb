# Product Images
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = [:tags_taxons, :tags_taxonomies, :products]
@tag_creator.create_blocks([{:tag_name => :taxons}])