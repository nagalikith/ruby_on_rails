class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :contactnumber
      t.string :email
      t.boolean :youngPerson
      t.float :hours
      t.float :target

      t.timestamps
    end
  end
end
