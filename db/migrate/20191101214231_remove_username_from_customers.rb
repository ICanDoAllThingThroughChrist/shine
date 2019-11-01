class RemoveUsernameFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :username, :string
  end
end
