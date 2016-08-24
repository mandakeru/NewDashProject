class AddPersonIdToCustomer < ActiveRecord::Migration
  def change
    add_reference :customers, :person, index: true, foreign_key: true
  end
end
