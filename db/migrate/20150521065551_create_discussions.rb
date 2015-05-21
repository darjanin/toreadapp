class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.text :content
      t.references :user, index: true
      t.references :item, index: true

      t.timestamps null: false
    end
    add_foreign_key :discussions, :users
    add_foreign_key :discussions, :items
  end
end
