class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :dob
      t.numeric :phone
      t.string :gender

      t.timestamps
    end
  end
end
