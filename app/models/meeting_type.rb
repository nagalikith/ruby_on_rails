# == Schema Information
#
# Table name: meeting_types
#
#  id           :bigint           not null, primary key
#  day          :string
#  sessiontype  :string
#  time         :time
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  club_info_id :bigint           not null
#
# Indexes
#
#  index_meeting_types_on_club_info_id  (club_info_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_info_id => club_infos.id)
#
class MeetingType < ApplicationRecord
    belongs_to :club_info
<<<<<<< HEAD
=======

    def mostRecentMeetings(club_id)
        most_recent_club_info_id_array = ClubInfo.select(:id).where(club_id: club_id).order("date DESC")
        if most_recent_club_info_id_array.length > 0
            most_recent_club_info_id = most_recent_club_info_id_array.first.id
        
            meeting_array = MeetingType.where(club_info_id: most_recent_club_info_id)
            return meeting_array
        else
            return []
        end
    end

>>>>>>> 04d85356a0cb73bb030fd76d9c5948ab11d3829b
end
