class AddClubIdToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :club_id, :integer
  end
end
