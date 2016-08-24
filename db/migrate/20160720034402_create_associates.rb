class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.integer :associate_number
      t.date :association_date
      t.integer :payment

      t.timestamps null: false
    end
    
    add_index :associates, :associate_number, unique: true
  end
end
