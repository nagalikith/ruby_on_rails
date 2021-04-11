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
    belongs_to :event
end
