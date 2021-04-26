# == Schema Information
#
# Table name: event_calendars
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint
#
# Indexes
#
#  index_event_calendars_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class EventCalendar < ApplicationRecord
    has_many :event
end
