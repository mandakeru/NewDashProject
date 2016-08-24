class RenameDependentToSecondaryAssociates < ActiveRecord::Migration
  def change
    rename_table :dependents, :secondary_associateds
  end
end
