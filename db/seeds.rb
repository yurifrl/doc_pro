@tag_creator = TagCreator.new

AdminUser.create!(email: 'docs@yebo.com.br', password: 'yebo1234', password_confirmation: 'yebo1234')

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
    {:name => :edit                        , file_path: 'checkout/edit'                                , content_id: contents[:checkout]},
    {:name => :internal_error              , file_path: 'errors/internal_error'                        , content_id: contents[:errors]},
    {:name => :page_not_found              , file_path: 'errors/page_not_found'                        , content_id: contents[:errors]},
    {:name => :product_not_found           , file_path: 'errors/product_not_found'                     , content_id: contents[:errors]},
    {:name => :unauthorized                , file_path: 'errors/unauthorized'                          , content_id: contents[:errors]},
    {:name => :index                       , file_path: 'home/index'                                   , content_id: contents[:home]},
    {:name => :body                        , file_path: 'layouts/body'                                 , content_id: contents[:layouts]},
    {:name => :head                        , file_path: 'layouts/head'                                 , content_id: contents[:layouts]},
    {:name => :cart                        , file_path: 'orders/cart'                                  , content_id: contents[:orders]},
    {:name => :detail                      , file_path: 'orders/detail'                                , content_id: contents[:orders]},
    {:name => :category                    , file_path: 'products/category'                            , content_id: contents[:products]},
    {:name => :detail                      , file_path: 'products/detail'                              , content_id: contents[:products]},
    {:name => :email                       , file_path: 'mail/layouts/email'                           , content_id: contents[:mail]},
    {:name => :cancel_email                , file_path: 'mail/order_mailer/cancel_email'               , content_id: contents[:mail]},
    {:name => :confirm_email               , file_path: 'mail/order_mailer/confirm_email'              , content_id: contents[:mail]},
    {:name => :address                     , file_path: 'mail/shared/address'                          , content_id: contents[:mail]},
    {:name => :footer                      , file_path: 'mail/shared/footer'                           , content_id: contents[:mail]},
    {:name => :header                      , file_path: 'mail/shared/header'                           , content_id: contents[:mail]},
    {:name => :order_details               , file_path: 'mail/shared/order_details'                    , content_id: contents[:mail]},
    {:name => :shipment_details            , file_path: 'mail/shared/shipment_details'                 , content_id: contents[:mail]},
    {:name => :stylesheet                  , file_path: 'mail/shared/stylesheet'                       , content_id: contents[:mail]},
    {:name => :reset_password_instructions , file_path: 'mail/shipment_mailer/shipped_email'           , content_id: contents[:mail]},
    {:name => :reset_password_instructions , file_path: 'mail/user_mailer/reset_password_instructions' , content_id: contents[:mail]},
    {:name => :change_email                , file_path: 'mail/change_email'                            , content_id: contents[:mail]},
    {:name => :reset_password_instructions , file_path: 'mail/reset_password_instructions'             , content_id: contents[:mail]},
    {:name => :account                     , file_path: 'users/account'                                , content_id: contents[:users]},
    {:name => :login                       , file_path: 'users/login'                                  , content_id: contents[:users]},
    {:name => :password_recover            , file_path: 'users/password_recover'                       , content_id: contents[:users]},
    {:name => :registration                , file_path: 'users/registration'                           , content_id: contents[:users]},
    {:name => :sign_up                     , file_path: 'users/sign_up'                                , content_id: contents[:users]},
].hmap do |obj|
  [obj[:name], Page.where(obj).first_or_create.id]
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

Dir[File.join(Rails.root , 'db' , 'seeds' , '*.rb')].sort.each { |seed| load seed }