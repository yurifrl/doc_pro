class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :name
      t.string :default
      t.text :description
      t.text :short_description
      t.belongs_to :tag
    end
  end
end
