class CreateEventFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :event_feedbacks do |t|
      t.text :comment

      t.timestamps
    end
  end
end
