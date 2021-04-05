class CreateMeetingTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_types do |t|
      t.string :day
      t.integer :time
      t.string :sessiontype

      t.timestamps
    end
  end
end
