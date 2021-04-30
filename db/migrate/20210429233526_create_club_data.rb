class CreateClubData < ActiveRecord::Migration[6.0]
  def change
    create_table :club_data do |t|
      t.bigint :club_id

      t.timestamps
    end
  end
end
