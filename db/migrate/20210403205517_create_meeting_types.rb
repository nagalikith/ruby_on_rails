class CreateMeetingTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_types, id: false, primary_key :meeting_id do |t|
      t.date :day
      t.integer :time
      t.string :sessiontype

      t.timestamps
    end
  end
end
