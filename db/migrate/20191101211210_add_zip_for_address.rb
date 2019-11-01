class AddZipForAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :zipcode, :integer
  end
end
