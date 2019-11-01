class AddTaxidToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :taxid, :integer
  end
end
