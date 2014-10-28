# ======================== properties ========================

# properties Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :property_css_class},
    {:tag_name => :property_presentation},
    {:tag_name => :property_value},
]
@tag_creator.create_tags(:tags_properties, aux)
