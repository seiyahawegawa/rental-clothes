class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :id, null: false
      t.references :price
     
    end
    add_column :items,:string
    add_index :items,
  end
end
