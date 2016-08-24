class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :title
      t.decimal :value
      t.text :description
      t.integer :code

      t.timestamps null: false
    end
    
    add_index :payments, :code, unique: true
  end
end
