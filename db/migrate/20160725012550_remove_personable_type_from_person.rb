class RemovePersonableTypeFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :personable_type, :string
  end
end
