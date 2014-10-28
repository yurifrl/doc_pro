# ======================== tax_categories ========================

# tax_categories Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :tax_category_id},
    {:tag_name => :tax_category_name},
    {:tag_name => :tax_category_description},
    {:tag_name => :tax_category_is_default},
    {:tag_name => :tax_category_deleted_at},
    {:tag_name => :tax_category_created_at},
    {:tag_name => :tax_category_updated_at},
]
@tag_creator.create_tags(:tags_tax_categories, aux)
