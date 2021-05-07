# == Schema Information
#
# Table name: admin_events
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :bigint
#  event_id   :bigint
#
# Indexes
#
#  index_admin_events_on_club_id   (club_id)
#  index_admin_events_on_event_id  (event_id)
#
class AdminEvent < ApplicationRecord
    belongs_to :club
    belongs_to :event
end
