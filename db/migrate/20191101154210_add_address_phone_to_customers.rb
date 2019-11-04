class AddAddressPhoneToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :hstore
    add_column :customers, :phone, :string
  end
end
