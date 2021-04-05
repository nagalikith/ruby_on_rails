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
class MeetingType < ApplicationRecord
end
