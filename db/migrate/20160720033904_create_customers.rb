class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_code

      t.timestamps null: false
    end
    
    add_index :customers, :customer_code, unique: true
  end
end
