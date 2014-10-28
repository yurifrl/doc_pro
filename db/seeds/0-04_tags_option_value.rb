# ======================== Images ========================

# Image Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                      = [
    {:tag_name => :option_value_id},
    {:tag_name => :option_value_position},
    {:tag_name => :option_value_name},
    {:tag_name => :option_value_option_type_id},
    {:tag_name => :option_value_created_at},
    {:tag_name => :option_value_updated_at},
    {:tag_name => :option_value_image_url},
    {:tag_name => :option_value_color},
]
@tag_creator.create_tags(:tags_option_values, aux)