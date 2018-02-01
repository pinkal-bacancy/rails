class AddDepartmentidToStudent < ActiveRecord::Migration[5.1]
  def up
    add_column :students, :department_id, :integer
  end
  def down
    remove_column :students, :department_id, :integer
  end
end
