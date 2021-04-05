class CreateEventFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :event_feedbacks, primary_key :feedback_id do |t|
      t.text :comment

      t.timestamps
    end
  end
end
