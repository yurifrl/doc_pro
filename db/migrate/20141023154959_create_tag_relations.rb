class CreateTagRelations < ActiveRecord::Migration
  def change
    create_table :tag_relations, :id => false do |t|
      t.integer :source_tag_id, index: true
      t.integer :target_tag_id, index: true
    end
    add_index :tag_relations, [:source_tag_id, :target_tag_id]
    add_index :tag_relations, [:target_tag_id, :source_tag_id]
  end
end
