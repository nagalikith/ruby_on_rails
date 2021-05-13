class AddDonorsRefToCommercial < ActiveRecord::Migration[6.0]
  def change
    add_reference :commercials, :donor, null: false, foreign_key: true
  end
end
