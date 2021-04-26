class AddEventsRefToEventCalendars < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_calendars, :event, null: true, foreign_key: true
  end
end
