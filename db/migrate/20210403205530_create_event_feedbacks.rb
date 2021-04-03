class CreateEventFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :event_feedbacks, id: false, primary_key :feedback_id do |t|
      t.string :comment

      t.timestamps
    end
  end
end
