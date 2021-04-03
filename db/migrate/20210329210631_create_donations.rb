class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations, id: false, primary_key :donation_id do |t|
      t.float :amount
      t.date :date
      t.text :method
      t.float :recurring
      t.text :restricted

      t.timestamps
    end
  end
end
