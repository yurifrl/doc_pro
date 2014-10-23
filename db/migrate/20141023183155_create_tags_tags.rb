class CreateTagsTags < ActiveRecord::Migration
  def change
    create_table :tags_tags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :tag, index: true
    end
  end
end
