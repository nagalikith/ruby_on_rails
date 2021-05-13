class AddDonorsRefToTrust < ActiveRecord::Migration[6.0]
  def change
    add_reference :trusts, :donor, null: false, foreign_key: true
  end
end
