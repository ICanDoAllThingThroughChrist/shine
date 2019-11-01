class ChangeDataTypeForAddress < ActiveRecord::Migration[5.1]
  def change
    change_column(:customers, :address, :string)
  end
end
