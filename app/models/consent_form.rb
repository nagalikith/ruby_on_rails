# == Schema Information
#
# Table name: consent_forms
#
#  id              :bigint           not null, primary key
#  participantname :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  event_id        :bigint
#
# Indexes
#
#  index_consent_forms_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class ConsentForm < ApplicationRecord
<<<<<<< HEAD
    belongs_to :event
=======
    has_one_attached :image
    belongs_to :event

    validates :participantname, presence: true
    scope :active, -> { where(active: true) }
    
>>>>>>> 04d85356a0cb73bb030fd76d9c5948ab11d3829b
end
