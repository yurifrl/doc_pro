class CreatePagesTags < ActiveRecord::Migration
  def change
    create_table :pages_tags do |t|
      t.belongs_to :page, index: true
      t.belongs_to :tag, index: true
    end
  end
end
