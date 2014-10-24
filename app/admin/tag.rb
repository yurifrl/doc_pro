ActiveAdmin.register Tag do
  before_filter :skip_sidebar!, :only => :index

  permit_params :name, :tag_name, :description, :example, :synopsis, :version, page_ids: [], contexts_ids: [], tag_ids: [], block_ids: []

  form do |f|
    f.actions
    f.inputs do
      f.input :pages, as: :select2_multiple, :input_html => {:multiple => true}
      f.input :contexts, as: :select2_multiple, :input_html => {:multiple => true}
      f.input :blocks, as: :select2_multiple, label: 'Pertence ao Bloco', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :tags, as: :select2_multiple, label: 'Possui as Tags', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :tag_name
      f.input :name
      f.input :description
      f.input :example
      f.input :synopsis
      f.input :version
    end
    f.actions
  end

end
