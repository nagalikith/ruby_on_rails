# == Schema Information
#
# Table name: event_feedbacks
#
#  id         :bigint           not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#
# Indexes
#
#  index_event_feedbacks_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class EventFeedback < ApplicationRecord
    #Associations
    belongs_to :event
end
