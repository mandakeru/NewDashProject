class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.integer :associate_id

      t.timestamps null: false
    end
    
    add_index :dependents, :associate_id
  end
end
