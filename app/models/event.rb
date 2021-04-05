# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  comment    :text
#  date       :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :bigint           not null
#
# Indexes
#
#  index_events_on_club_id  (club_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
class Event < ApplicationRecord
    has_one :event_feedback
    has_many :consent_form
    has_many :case_study
end
