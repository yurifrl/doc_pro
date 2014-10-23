class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.text :example
      t.string :synopsis
      t.string :version

      t.timestamps
    end
  end
end
