class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events, primary_key: 'event_id' do |t|
      t.string :name
      t.date :date
      t.text :comment

      t.timestamps
    end
  end
end
