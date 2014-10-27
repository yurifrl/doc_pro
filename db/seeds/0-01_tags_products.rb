# ======================== Products ========================

# Product Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                     = [
    {:tag_name => :product_cart_form, name: 'Product Cart Form'},
    {:tag_name => :product_class_alternator1, name: 'Product Class Alternator1'},
    {:tag_name => :product_class_alternator2, name: 'Product Class Alternator2'},
    {:tag_name => :product_variant_hidden_id, name: 'Product Variant Hidden Id'},
    {:tag_name => :product_add_to_cart, name: 'Product Add To Cart'},
    {:tag_name => :product_id, name: 'Product Id'},
    {:tag_name => :product_sku, name: 'Product Sku'},
    {:tag_name => :product_name, name: 'Product Name'},
    {:tag_name => :product_description, name: 'Product Description'},
    {:tag_name => :product_short_description, name: 'Product Short Description'},
    {:tag_name => :product_available_on, name: 'Product Available On'},
    {:tag_name => :product_deleted_at, name: 'Product Deleted At'},
    {:tag_name => :product_slug, name: 'Product Slug'},
    {:tag_name => :product_meta_description, name: 'Product Meta Description'},
    {:tag_name => :product_meta_keywords, name: 'Product Meta Keywords'},
    {:tag_name => :product_created_at, name: 'Product Created At'},
    {:tag_name => :product_updated_at, name: 'Product Updated At'},
    {:tag_name => :product_tax_categories, name: 'Product Tax Categories'},
    {:tag_name => :product_shipping_categories, name: 'Product Shipping Categories'},
    {:tag_name => :product_price, name: 'Product Price'},
    {:tag_name => :product_currency, name: 'Product Currency'},
    {:tag_name => :product_link, name: 'Product Link'},
    {:tag_name => :product_price_in_current_currency?, name: 'Product Price In Current Currency'},
    {:tag_name => :product_master_can_supply?, name: 'Product Master Can Supply'},
    {:tag_name => :product_available_in_stock?, name: 'Product Available In Stock'},
    {:tag_name => :product_total_in_stock, name: 'Product Total In Stock'},
    {:tag_name => :product_variants?, name: 'Product Variants'},
    {:tag_name => :product_promotions?, name: 'Product Promotions'},
    {:tag_name => :product_taxons?, name: 'Product Taxons'},
    {:tag_name => :product_property_css_class, name: 'Product Property Css Class'},
    {:tag_name => :product_properties?, name: 'Product Properties'},
    {:tag_name => :product_reset_cycle_properties, name: 'Product Reset Cycle Properties'},
]
@tag_creator.create_tags(:tags_products, aux)