class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :tag_name
      t.text :description
      t.text :example_curly
      t.text :example_html
      t.text :additional_info
      t.string :synopsis
      t.string :version
      t.integer :type_of, default: 0
      t.timestamps
    end
  end
end
