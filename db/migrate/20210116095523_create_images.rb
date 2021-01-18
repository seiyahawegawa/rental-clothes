class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :item_images
     
      t.timestamps
    end
    add_column :image,:string
    add_index :image,
  end
end
