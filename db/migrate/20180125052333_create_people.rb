class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :dob
      t.string :city

      t.timestamps
    end
  end
end
