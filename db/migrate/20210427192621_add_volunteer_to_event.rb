class AddVolunteerToEvent < ActiveRecord::Migration[6.0]
  def change
    create_table :event_volunteers do |t|
      t.belongs_to :event
      t.belongs_to :volunteer
      
      t.timestamps
    end


  end
end
