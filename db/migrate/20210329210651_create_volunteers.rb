class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :contactnumber
      t.text :addressone
      t.text :addresstwo
      t.text :email
      t.text :postcode
      t.float :hours
      t.float :target

      t.timestamps
    end
  end
end
