# ======================== Images ========================

# Image Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                      = [
    {:tag_name => :option_type_id, name: 'option_type_id'},
    {:tag_name => :option_type_name, name: 'option_type_name'},
    {:tag_name => :option_type_position, name: 'option_type_position'},
    {:tag_name => :option_type_created_at, name: 'option_type_created_at'},
    {:tag_name => :option_type_updated_at, name: 'option_type_updated_at'},
]
@tag_creator.create_tags(:tags_option_types, aux)