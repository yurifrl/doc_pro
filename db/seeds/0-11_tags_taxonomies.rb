# ======================== taxonomies ========================

# taxonomies Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :taxonomy_permalink},
    {:tag_name => :taxonomy_id},
    {:tag_name => :taxonomy_name},
    {:tag_name => :taxonomy_created_at},
    {:tag_name => :taxonomy_updated_at},
    {:tag_name => :taxonomy_position},
]
@tag_creator.create_tags(:tags_taxonomies, aux)
