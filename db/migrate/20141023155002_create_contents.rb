class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :system_name
      t.text :description

      t.timestamps
    end
  end
end
