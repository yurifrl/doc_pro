ActiveAdmin.register Tag do
  permit_params :name, :description, :example, :synopsis, :version, page_ids: [], contexts_ids: []


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.actions
    f.inputs  do
      f.input :pages, :as => :select, :input_html => {:multiple => true}
      f.input :contexts, :as => :select, :input_html => {:multiple => true}
      f.input :tags, :as => :select, :input_html => {:multiple => true}
      f.input :type_of, :as => :select, :input_html => {:multiple => true}
      f.input :name
      f.input :description
      f.input :example
      f.input :synopsis
      f.input :version
    end
    f.actions
  end

end
