class AddAddressPhoneToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :hstore
    add_column :customers, :phone, :string

    add_index :customers, :address, unique: true
    add_index :customers, :phone, unique: true
  end
end
