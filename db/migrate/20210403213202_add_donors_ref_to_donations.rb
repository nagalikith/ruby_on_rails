class AddDonorsRefToDonations < ActiveRecord::Migration[6.0]
  def change
    add_reference :donations, :donor, null: false, foreign_key: true
  end
end
