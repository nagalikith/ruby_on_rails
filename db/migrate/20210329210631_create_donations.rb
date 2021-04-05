class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations, primary_key :donation_id do |t|
      t.float :amount
      t.date :date
      t.string :method
      t.float :recurring
      t.string :restricted

      t.timestamps
    end
  end
end
