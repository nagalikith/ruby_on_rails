# == Schema Information
#
# Table name: club_data
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :bigint
#
class ClubDatum < ApplicationRecord
end
