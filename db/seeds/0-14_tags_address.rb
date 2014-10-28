# ======================== address ========================

# address Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                    	 = [
    {:tag_name => :address_id},
    {:tag_name => :address_firstname},
    {:tag_name => :address_lastname},
    {:tag_name => :address_address1},
    {:tag_name => :address_address2},
    {:tag_name => :address_city},
    {:tag_name => :address_zipcode},
    {:tag_name => :address_phone},
    {:tag_name => :address_state_name},
    {:tag_name => :address_alternative_phone},
    {:tag_name => :address_company},
    {:tag_name => :address_state_id},
    {:tag_name => :address_country_id},
    {:tag_name => :address_created_at},
    {:tag_name => :address_updated_at},
]
@tag_creator.create_tags(:tags_address, aux)
