class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :description
      t.references :content, index: true

      t.timestamps
    end
  end
end
