@tag_creator = TagCreator.new

contents = [
    {:system_name => :checkout, name: 'Checkout', description: ''},
    {:system_name => :errors, name: 'Erros', description: ''},
    {:system_name => :home, name: 'Home', description: ''},
    {:system_name => :layouts, name: 'Layouts', description: ''},
    {:system_name => :mail, name: 'Mail', description: ''},
    {:system_name => :orders, name: 'Pedidos', description: ''},
    {:system_name => :products, name: 'Produtos', description: ''},
    {:system_name => :users, name: 'Usuarios', description: ''}
].hmap do |obj|
  [obj[:system_name], Content.where(obj).first_or_create.id]
end

@tag_creator.pages       = [
    {:system_name => :edit, name: '', description: '', content_id: contents[:checkout]},
    {:system_name => :internal_error, name: '', description: '', content_id: contents[:errors]},
    {:system_name => :page_not_found, name: '', description: '', content_id: contents[:errors]},
    {:system_name => :product_not_found, name: '', description: '', content_id: contents[:errors]},
    {:system_name => :unauthorized, name: '', description: '', content_id: contents[:errors]},
    {:system_name => :index, name: '', description: '', content_id: contents[:home]},
    {:system_name => :body, name: '', description: '', content_id: contents[:layouts]},
    {:system_name => :head, name: '', description: '', content_id: contents[:layouts]},
    {:system_name => :cart, name: '', description: '', content_id: contents[:orders]},
    {:system_name => :detail, name: '', description: '', content_id: contents[:orders]},
    {:system_name => :category, name: '', description: '', content_id: contents[:products]},
    {:system_name => :detail, name: '', description: '', content_id: contents[:products]},
    {:system_name => :email, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :cancel_email, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :confirm_email, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :address, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :footer, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :header, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :order_details, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :shipment_details, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :stylesheet, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :reset_password_instructions, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :change_email, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :reset_password_instructions, name: '', description: '', content_id: contents[:mail]},
    {:system_name => :account, name: '', description: '', content_id: contents[:users]},
    {:system_name => :login, name: '', description: '', content_id: contents[:users]},
    {:system_name => :password_recover, name: '', description: '', content_id: contents[:users]},
    {:system_name => :registration, name: '', description: '', content_id: contents[:users]},
    {:system_name => :sign_up, name: '', description: '', content_id: contents[:users]}
].hmap do |obj|
  [obj[:system_name], Page.where(obj).first_or_create.id]
end

# Create All blocks

@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
@tag_creator.create_blocks ([
    {:tag_name => :cart_items, name: '', :type_of => 1},
    {:tag_name => :images, name: '', :type_of => 1},
    {:tag_name => :option_types, name: '', :type_of => 1},
    {:tag_name => :option_values, name: '', :type_of => 1},
    {:tag_name => :orders, name: '', :type_of => 1},
    {:tag_name => :page_products, name: '', :type_of => 1},
    {:tag_name => :page_products_pagination, name: '', :type_of => 1},
    {:tag_name => :products, name: '', :type_of => 1},
    {:tag_name => :promotions, name: '', :type_of => 1},
    {:tag_name => :properties, name: '', :type_of => 1},
    {:tag_name => :shipping_categories, name: '', :type_of => 1},
    {:tag_name => :tax_categories, name: '', :type_of => 1},
    {:tag_name => :taxons, name: '', :type_of => 1},
    {:tag_name => :taxonomies, name: '', :type_of => 1},
    {:tag_name => :variants, name: '', :type_of => 1},
])

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }