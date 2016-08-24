class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :neighborhood
      t.integer :state
      t.integer :nation
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps null: false
    end
    
    add_index :addresses, [:addressable_type, :addressable_id]
  end
end
