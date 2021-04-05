class CreateMeetingTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_types, primary_key :meeting_id do |t|
      t.string :day
      t.integer :time
      t.string :sessiontype

      t.timestamps
    end
  end
end
