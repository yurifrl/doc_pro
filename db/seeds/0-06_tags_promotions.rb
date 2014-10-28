# ======================== promotions ========================

# promotions Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :promotion_name},
    {:tag_name => :promotion_description},
]
@tag_creator.create_tags(:tags_promotions, aux)
