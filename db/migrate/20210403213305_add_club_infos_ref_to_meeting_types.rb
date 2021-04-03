class AddClubInfosRefToMeetingTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :meeting_types, :club_infos, null: false, foreign_key: true
  end
end
