class AddPriceToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :Price, :Integer
    add_column :items, :period, :string
  end
end
