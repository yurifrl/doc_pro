# ======================== shipping_categories ========================

# shipping_categories Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :shipping_category_id},
    {:tag_name => :shipping_category_name},
    {:tag_name => :shipping_category_created_at},
    {:tag_name => :shipping_category_updated_at},
]
@tag_creator.create_tags(:tags_shipping_categories, aux)
