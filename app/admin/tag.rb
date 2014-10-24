ActiveAdmin.register Tag do
  # before_filter :skip_sidebar!, :only => :index

  permit_params :name, :tag_name, :description, :example, :synopsis, :version, page_ids: [], context_ids: [], tag_ids: [], block_ids: []

  action_item do
    link_to "Add Tag", "/admin/tags/new"
  end

  index do
    column "Tag", :sortable => :tag_name do |tag|
      link_to tag.tag_name, edit_admin_tag_path(tag)
    end
    column :type_of, :sortable => :type_of do |t|
      t.type_of
    end
  end

  filter :tag_name

  form do |f|
    f.actions
    f.inputs "Details" do
      f.input :tag_name
      f.input :name
    end
    f.inputs "Location" do
      f.input :blocks, as: :select2_multiple, label: 'Pertence ao Bloco', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :tags, as: :select2_multiple, label: 'Possui as Tags', :input_html => {:multiple => true}, collection: Tag.all.pluck(:tag_name, :id)
      f.input :pages, as: :select2_multiple, :input_html => {:multiple => true}, collection: Page.all.pluck(:system_name, :id)
      f.input :contexts, as: :select2_multiple, :input_html => {:multiple => true}, collection: Context.all.pluck(:name, :id)
      f.input :type_of, as: :select, collection: Tag.type_ofs, include_blank: false
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
