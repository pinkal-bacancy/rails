class AddRoleToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :role, :boolean
  end
end
