# ======================== variants ========================

# variants Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :variant_name},
    {:tag_name => :variant_available_in_stock?},
    {:tag_name => :variant_total_in_stock},
    {:tag_name => :variant_price_display},
    {:tag_name => :variant_product_id},
    {:tag_name => :variant_is_checked},
    {:tag_name => :variant_id},
    {:tag_name => :variant_options},
    {:tag_name => :variant_price},
    {:tag_name => :variant_radio},
]
@tag_creator.create_tags(:tags_variants, aux)
