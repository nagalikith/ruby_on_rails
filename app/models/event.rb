# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  comment    :text
#  date       :date
#  end_time   :datetime
#  name       :string
#  start_time :datetime
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
    has_many :event_feedback , dependent: :destroy
    belongs_to :club
    has_many :consent_form , dependent: :destroy
    has_many :case_study , dependent: :destroy
    belongs_to :club
    #belongs_to :event_calendars
    

    # attr_accessible :name, :date

    def start_time
        date
    end
end
