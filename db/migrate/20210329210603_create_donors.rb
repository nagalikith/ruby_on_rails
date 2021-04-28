class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors do |t|
      t.string :name
      t.text :type
      t.string :contactnumber
      t.text :email
      t.integer :totaldonation

      t.timestamps
    end
  end
end
