class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone1
      t.string :phone2
      t.integer :phoneable_id
      t.string :phoneable_type

      t.timestamps null: false
    end
    add_index :phones, [:phoneable_id, :phoneable_type]
    
  end
end
