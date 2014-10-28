ActiveAdmin.register Page do
  permit_params :name, :description, :content_id, :file_path, :short_description, :example_html, :example_curly

  index do
    column (:example_curly) { |o| raw(o.example_curly) }
    column (:example_html) { |o| raw(o.example_html) }
  end
end
