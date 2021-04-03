class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events, id: false, primary_key :event_id do |t|
      t.string :name
      t.date :date
      t.string :comment

      t.timestamps
    end
  end
end
