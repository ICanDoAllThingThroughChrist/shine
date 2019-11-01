class AddDetailsCustomers < ActiveRecord::Migration[5.1]
  def change
  end
   add_column :customers, :address_number, :integer
   add_column :customers, :city, :string
   add_column :customers, :state, :string 
end
