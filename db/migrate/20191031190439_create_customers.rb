class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name , null:false
      t.string :last_name  , null:false
      t.string :email      , null:true
      t.string :username   , null:true

      t.timestamps          null:false
    end

  end
end
