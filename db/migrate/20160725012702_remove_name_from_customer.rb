class RemoveNameFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :name, :string
     remove_column :customers, :rg, :string
      remove_column :customers, :cpf, :string
       remove_column :customers, :birthdate, :date
  end
end
