# ======================== taxons ========================

# taxons Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :taxon?},
    {:tag_name => :taxon_active?},
    {:tag_name => :taxon_id},
    {:tag_name => :taxon_parent_id},
    {:tag_name => :taxon_position},
    {:tag_name => :taxon_name},
    {:tag_name => :taxon_link},
    {:tag_name => :taxon_taxonomy_id},
    {:tag_name => :taxon_lft},
    {:tag_name => :taxon_rgt},
    {:tag_name => :taxon_icon_file_name},
    {:tag_name => :taxon_icon_content_type},
    {:tag_name => :taxon_icon_file_size},
    {:tag_name => :taxon_icon_updated_at},
    {:tag_name => :taxon_description},
    {:tag_name => :taxon_created_at},
    {:tag_name => :taxon_updated_at},
    {:tag_name => :taxon_meta_title},
    {:tag_name => :taxon_meta_description},
    {:tag_name => :taxon_meta_keywords},
    {:tag_name => :taxon_depth},
]
@tag_creator.create_tags(:tags_taxons, aux)
