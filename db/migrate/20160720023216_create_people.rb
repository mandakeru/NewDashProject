class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.date :birthdate

      t.timestamps null: false
    end
    
    add_index  :people, :cpf, unique: true
    add_index :people, :rg, unique: true
  end
end
