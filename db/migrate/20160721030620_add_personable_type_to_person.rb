class AddPersonableTypeToPerson < ActiveRecord::Migration
  def change
    add_column :people, :personable_type, :string
     add_column :people, :personable_id, :integer
  end
end
