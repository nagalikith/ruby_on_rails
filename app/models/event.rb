# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  all_groups  :boolean
#  comment     :text
#  date        :date
#  end_time    :datetime
#  name        :string
#  spaces_left :integer
#  start_time  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  club_id     :bigint           not null
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
    has_many :event_feedback , dependent: :destroy
    #Dependent ensures that when something destroyed with an Event will also destroy the event feedback.
    belongs_to :club
    has_many :admin_event
    has_many :consent_form , dependent: :destroy
    belongs_to :club
    def start_time
        date
    end
end
