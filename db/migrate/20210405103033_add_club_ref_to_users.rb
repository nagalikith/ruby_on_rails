class AddClubRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :club, null: false, foreign_key: true
  end
end
