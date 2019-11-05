class AddDetailsToCarts < ActiveRecord::Migration[5.1]
  def change
  end
  add_column :carts, :id, :integer
  add_column :carts, :cart_number, :integer
end
