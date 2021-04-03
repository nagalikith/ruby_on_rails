class AddClubsRefToClubInfos < ActiveRecord::Migration[6.0]
  def change
    add_reference :club_infos, :club, null: false, foreign_key: true
  end
end
