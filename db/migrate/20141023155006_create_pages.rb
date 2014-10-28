class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :file_path
      t.text :description
      t.text :short_description
      t.text :example_html
      t.text :example_curly
      t.references :content, index: true
      t.timestamps
    end
  end
end
