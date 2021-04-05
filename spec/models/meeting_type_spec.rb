# == Schema Information
#
# Table name: meeting_types
#
#  id            :bigint           not null, primary key
#  day           :string
#  sessiontype   :string
#  time          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  club_infos_id :bigint           not null
#
# Indexes
#
#  index_meeting_types_on_club_infos_id  (club_infos_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_infos_id => club_infos.id)
#
require 'rails_helper'

RSpec.describe MeetingType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
