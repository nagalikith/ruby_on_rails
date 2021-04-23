class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :postcode
      t.bigint :contactnumber
      t.date :paymentduedate

      t.timestamps
    end
  end
end
