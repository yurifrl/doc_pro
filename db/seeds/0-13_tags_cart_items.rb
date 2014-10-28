# ======================== cart_items ========================

# cart_items Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :cart_item_id},
    {:tag_name => :cart_item_variant_id},
    {:tag_name => :cart_item_order_id},
    {:tag_name => :cart_item_quantity},
    {:tag_name => :cart_item_price},
    {:tag_name => :cart_item_created_at},
    {:tag_name => :cart_item_updated_at},
    {:tag_name => :cart_item_currency},
    {:tag_name => :cart_item_cost_price},
    {:tag_name => :cart_item_tax_category_id},
    {:tag_name => :cart_item_adjustment_total},
    {:tag_name => :cart_item_additional_tax_total},
    {:tag_name => :cart_item_promo_total},
    {:tag_name => :cart_item_included_tax_total},
    {:tag_name => :cart_item_pre_tax_amount},
]
@tag_creator.create_tags(:tags_cart_items, aux)
