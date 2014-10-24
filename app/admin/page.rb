ActiveAdmin.register Page do
  permit_params :name, :description

  action_item do
    link_to "Add new", "new"
  end

end
