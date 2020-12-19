class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_id, null: false
      t.timestamps
    end
    add_index :items, :item_id, unique: true
  end
end
