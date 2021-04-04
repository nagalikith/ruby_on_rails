class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors, id: false, primary_key :donor_id do |t|
      t.string :name
      t.text :type
      t.integer :contactnumber
      t.text :email
      t.integer :totaldonation

      t.timestamps
    end
  end
end