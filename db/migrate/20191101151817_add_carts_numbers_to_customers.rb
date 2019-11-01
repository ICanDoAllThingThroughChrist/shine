class AddCartsNumbersToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :cart_number1, :integer
    add_column :customers, :cart_number2, :integer
    add_column :customers, :cart_number3, :integer
  end
end
