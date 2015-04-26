class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :content
      t.references :user, index: true
      t.references :list, index: true
      t.integer :karma, default: 0

      t.timestamps null: false
    end
    add_foreign_key :items, :users
    add_foreign_key :items, :lists
  end
end
