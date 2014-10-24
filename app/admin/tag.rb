ActiveAdmin.register Tag do
  before_filter :skip_sidebar!, :only => :index


  action_item do
    link_to "Add", "/admin/tags/new"
  end


  permit_params :name, :tag_name, :description, :example, :synopsis, :version, page_ids: [], contexts_ids: [], tag_ids: [], block_ids: []

  form do |f|
    f.actions
    f.inputs "Details" do
      f.input :tag_name
      f.input :name
    end
    f.inputs "Location" do
      f.input :blocks, as: :select2_multiple, label: 'Pertence ao Bloco', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :tags, as: :select2_multiple, label: 'Possui as Tags', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :pages, as: :select2_multiple, :input_html => {:multiple => true}
      f.input :contexts, as: :select2_multiple, :input_html => {:multiple => true}
    end
    f.inputs "Content" do
      f.input :description
      f.input :example
      f.input :synopsis
      f.input :version
    end
    f.actions
  end
end
