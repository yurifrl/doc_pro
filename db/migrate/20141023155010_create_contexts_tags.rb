class CreateContextsTags < ActiveRecord::Migration
  def change
    create_table :contexts_tags do |t|
      t.belongs_to :context, index: true
      t.belongs_to :tag, index: true
    end
  end
end
