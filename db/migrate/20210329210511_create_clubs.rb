class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs, primary_key :club_id do |t|
      t.string :name
      t.string :postcode
      t.integer :contactnumber
      t.date :paymentduedate

      t.timestamps
    end
  end
end
