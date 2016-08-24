class SecondaryAssociatesTo < ActiveRecord::Migration
  def change
    drop_table(:secondary_associateds)
  end
end
