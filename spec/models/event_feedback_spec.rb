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
require 'rails_helper'

RSpec.describe EventFeedback, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
