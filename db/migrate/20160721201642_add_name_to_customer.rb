class AddNameToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string
    add_column :customers, :cpf, :string
    add_column :customers, :rg, :string
    add_column :customers, :birthdate, :date
    add_column :customers, :customer_type, :integer
  end
end
