# == Schema Information
#
# Table name: event_volunteers
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  event_id     :bigint
#  volunteer_id :bigint
#
# Indexes
#
#  index_event_volunteers_on_event_id      (event_id)
#  index_event_volunteers_on_volunteer_id  (volunteer_id)
#
require 'rails_helper'

RSpec.describe EventVolunteer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
