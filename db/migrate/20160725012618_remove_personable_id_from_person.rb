class RemovePersonableIdFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :personable_id, :integer
  end
end
