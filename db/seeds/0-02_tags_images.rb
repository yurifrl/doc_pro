# ======================== Images ========================

# Image Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                     = [
    {:tag_name => :image_url, name: 'image url'},
    {:tag_name => :image_alt, name: 'image alt'},
    {:tag_name => :images?, name: 'images?'},
    {:tag_name => :image_dom_id, name: 'image dom id'},
    {:tag_name => :image_id, name: 'image id'},
    {:tag_name => :image_integer, name: 'image integer'},
    {:tag_name => :image_viewable_type, name: 'image viewable type'},
    {:tag_name => :image_attachment_width, name: 'image attachment width'},
    {:tag_name => :image_attachment_height, name: 'image attachment height'},
    {:tag_name => :image_attachment_file_size, name: 'image attachment file size'},
    {:tag_name => :image_attachment_content_type, name: 'image attachment content type'},
    {:tag_name => :image_attachment_file_name, name: 'image attachment file name'},
    {:tag_name => :image_position, name: 'image position'},
    {:tag_name => :image_type, name: 'image type'},
    {:tag_name => :image_attachment_updated_at, name: 'image attachment updated at'},
]
@tag_creator.create_tags(:tags_images, aux)