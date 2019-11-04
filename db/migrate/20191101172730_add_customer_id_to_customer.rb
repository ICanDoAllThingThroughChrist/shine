class AddCustomerIdToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customerid, :integer
    # add_index :customers, :customerid, unique: true
  end
end
