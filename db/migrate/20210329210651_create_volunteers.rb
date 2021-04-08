class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.bigint :contactnumber
      t.string :addressone
      t.string :addresstwo
      t.string :email
      t.string :postcode
      t.float :hours
      t.float :target

      t.timestamps
    end
  end
end
