content_checkout = Content.where(system_name: 'checkout', name: 'Checkout',  description: 'Checkout da plataform').first_or_create
content_errors = Content.where(system_name: 'errors', name: 'Erros',  description: '').first_or_create
content_home = Content.where(system_name: 'home', name: 'Home',  description: '').first_or_create
content_layouts = Content.where(system_name: 'layouts', name: 'Layouts',  description: '').first_or_create
content_mail = Content.where(system_name: 'mail', name: 'Mail',  description: '').first_or_create
content_orders = Content.where(system_name: 'orders', name: 'Pedidos',  description: '').first_or_create
content_products = Content.where(system_name: 'products', name: 'Produtos',  description: '').first_or_create
content_users = Content.where(system_name: 'users', name: 'Usuarios',  description: '').first_or_create

pages = []
pages << Page.where(name: 'Edit', system_name: 'edit', description: 'Pagina de checkout', content_id: content_checkout.id).first_or_create

pages << Page.where(name: '', system_name: 'internal_error', description: '', content_id: content_errors.id).first_or_create
pages << Page.where(name: '', system_name: 'page_not_found', description: '', content_id: content_errors.id).first_or_create
pages << Page.where(name: '', system_name: 'product_not_found', description: '', content_id: content_errors.id).first_or_create
pages << Page.where(name: '', system_name: 'unauthorized', description: '', content_id: content_errors.id).first_or_create

pages << Page.where(name: '', system_name: 'index', description: '', content_id: content_home.id).first_or_create

pages << Page.where(name: '', system_name: 'body', description: '', content_id: content_layouts.id).first_or_create
pages << Page.where(name: '', system_name: 'head', description: '', content_id: content_layouts.id).first_or_create

pages << Page.where(name: '', system_name: 'cart', description: '', content_id: content_orders.id).first_or_create
pages << Page.where(name: '', system_name: 'detail', description: '', content_id: content_orders.id).first_or_create

pages << Page.where(name: '', system_name: 'category', description: '', content_id: content_products.id).first_or_create
pages << Page.where(name: '', system_name: 'detail', description: '', content_id: content_products.id).first_or_create

pages << Page.where(name: '', system_name: 'layouts/email', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'order_mailer/cancel_email', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'order_mailer/confirm_email', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/address', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/footer', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/header', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/order_details', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/shipment_details', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'shared/stylesheet', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'user_mailer/reset_password_instructions', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'change_email', description: '', content_id: content_mail.id).first_or_create
pages << Page.where(name: '', system_name: 'reset_password_instructions', description: '', content_id: content_mail.id).first_or_create

pages << Page.where(name: '', system_name: 'account', description: '', content_id: content_users.id).first_or_create
pages << Page.where(name: '', system_name: 'login', description: '', content_id: content_users.id).first_or_create
pages << Page.where(name: '', system_name: 'password_recover', description: '', content_id: content_users.id).first_or_create
pages << Page.where(name: '', system_name: 'registration', description: '', content_id: content_users.id).first_or_create
pages << Page.where(name: '', system_name: 'sign_up', description: '', content_id: content_users.id).first_or_create


products_tag = Tag.where(tag_name: 'products', name: 'Produtos').first_or_create
product_tags = []
product_tags << Tag.where(tag_name: 'product_cart_form', name: 'Product Cart Form').first_or_create
product_tags << Tag.where(tag_name: 'product_class_alternator1', name: 'Product Class Alternator1').first_or_create
product_tags << Tag.where(tag_name: 'product_class_alternator2', name: 'Product Class Alternator2').first_or_create
product_tags << Tag.where(tag_name: 'product_variant_hidden_id', name: 'Product Variant Hidden Id').first_or_create
product_tags << Tag.where(tag_name: 'product_add_to_cart', name: 'Product Add To Cart').first_or_create
product_tags << Tag.where(tag_name: 'product_id', name: 'Product Id').first_or_create
product_tags << Tag.where(tag_name: 'product_sku', name: 'Product Sku').first_or_create
product_tags << Tag.where(tag_name: 'product_name', name: 'Product Name').first_or_create
product_tags << Tag.where(tag_name: 'product_description', name: 'Product Description').first_or_create
product_tags << Tag.where(tag_name: 'product_short_description', name: 'Product Short Description').first_or_create
product_tags << Tag.where(tag_name: 'product_available_on', name: 'Product Available On').first_or_create
product_tags << Tag.where(tag_name: 'product_deleted_at', name: 'Product Deleted At').first_or_create
product_tags << Tag.where(tag_name: 'product_slug', name: 'Product Slug').first_or_create
product_tags << Tag.where(tag_name: 'product_meta_description', name: 'Product Meta Description').first_or_create
product_tags << Tag.where(tag_name: 'product_meta_keywords', name: 'Product Meta Keywords').first_or_create
product_tags << Tag.where(tag_name: 'product_created_at', name: 'Product Created At').first_or_create
product_tags << Tag.where(tag_name: 'product_updated_at', name: 'Product Updated At').first_or_create
product_tags << Tag.where(tag_name: 'product_tax_categories', name: 'Product Tax Categories').first_or_create
product_tags << Tag.where(tag_name: 'product_shipping_categories', name: 'Product Shipping Categories').first_or_create
product_tags << Tag.where(tag_name: 'product_price', name: 'Product Price').first_or_create
product_tags << Tag.where(tag_name: 'product_currency', name: 'Product Currency').first_or_create
product_tags << Tag.where(tag_name: 'product_link', name: 'Product Link').first_or_create
product_tags << Tag.where(tag_name: 'product_price_in_current_currency?', name: 'Product Price In Current Currency').first_or_create
product_tags << Tag.where(tag_name: 'product_master_can_supply?', name: 'Product Master Can Supply').first_or_create
product_tags << Tag.where(tag_name: 'product_available_in_stock?', name: 'Product Available In Stock').first_or_create
product_tags << Tag.where(tag_name: 'product_total_in_stock', name: 'Product Total In Stock').first_or_create
product_tags << Tag.where(tag_name: 'product_variants?', name: 'Product Variants').first_or_create
product_tags << Tag.where(tag_name: 'product_promotions?', name: 'Product Promotions').first_or_create
product_tags << Tag.where(tag_name: 'product_taxons?', name: 'Product Taxons').first_or_create
product_tags << Tag.where(tag_name: 'product_property_css_class', name: 'Product Property Css Class').first_or_create
product_tags << Tag.where(tag_name: 'product_properties?', name: 'Product Properties').first_or_create
product_tags << Tag.where(tag_name: 'product_reset_cycle_properties', name: 'Product Reset Cycle Properties').first_or_create

product_tags.map do |product_tag|
  product_tag.update_attribute(:block_ids, products_tag.id)
  product_tag.update_attribute(:page_ids, Page.where(name: '', system_name: 'detail', description: '', content_id: content_products.id).first.id)
end

images_tag = Tag.where(tag_name: 'images', name: 'Imagens').first_or_create
image_tags = []
image_tags << Tag.where(tag_name: 'image_url', name: 'image url').first_or_create
image_tags << Tag.where(tag_name: 'image_alt', name: 'image alt').first_or_create
image_tags << Tag.where(tag_name: 'images?', name: 'images?').first_or_create
image_tags << Tag.where(tag_name: 'image_dom_id', name: 'image dom id').first_or_create
image_tags << Tag.where(tag_name: 'image_id', name: 'image id').first_or_create
image_tags << Tag.where(tag_name: 'image_integer', name: 'image integer').first_or_create
image_tags << Tag.where(tag_name: 'image_viewable_type', name: 'image viewable type').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_width', name: 'image attachment width').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_height', name: 'image attachment height').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_file_size', name: 'image attachment file size').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_content_type', name: 'image attachment content type').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_file_name', name: 'image attachment file name').first_or_create
image_tags << Tag.where(tag_name: 'image_position', name: 'image position').first_or_create
image_tags << Tag.where(tag_name: 'image_type', name: 'image type').first_or_create
image_tags << Tag.where(tag_name: 'image_attachment_updated_at', name: 'image attachment updated at').first_or_create


image_tags.map do |image_tag|
  image_tag.update_attribute(:block_ids, [products_tag.id, images_tag.id])
  image_tag.update_attribute(:page_ids, Page.where(name: '', system_name: 'detail', description: '', content_id: content_products.id).first.id)
end
# option_types_tag = Tag.where(tag_name: 'option_types', name: 'OptionType').first_or_create
# variants_tag = Tag.where(tag_name: 'variants', name: 'Variant').first_or_create
# taxons_tag = Tag.where(tag_name: 'taxons', name: 'Taxon').first_or_create
# promotions_tag = Tag.where(tag_name: 'promotions', name: 'Promotion').first_or_create
# properties_tag = Tag.where(tag_name: 'properties', name: 'Property').first_or_create