class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :tag_name
      t.text :description
      t.text :example
      t.string :synopsis
      t.string :version
      t.column :type_of, :integer, default: 0

      t.timestamps
    end
  end
end
