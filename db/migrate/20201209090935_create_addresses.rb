class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address_family_name, null: false
      t.string :address_first_name, null: false
      t.string :address_family_name_kana, null: false
      t.string :address_first_name_kana, null: false

      t.timestamps
    end
  end
end
