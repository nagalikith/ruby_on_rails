class CreateProspectiveDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :prospective_donors, primary_key :prospdonor_id do |t|
      t.string :name
      t.string :type
      t.integer :contactnumber
      t.string :internalcontactlink
      t.string :email
      t.timestamps
    end
  end
end
