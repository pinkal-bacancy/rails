class ChangeRoleField < ActiveRecord::Migration[5.1]
  def up
  	change_column :people, :role, :string
  end
   def down
  	change_column :peaple, :role, :boolean
  end

end
