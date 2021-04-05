# == Schema Information
#
# Table name: club_infos
#
#  id                 :bigint           not null, primary key
#  date               :date
#  depravation        :integer
#  disability         :integer
#  drugsandabs        :integer
#  ethnicity          :integer
#  females            :integer
#  lowerage           :integer
#  males              :integer
#  mentalhealth       :integer
#  neets              :integer
#  upperage           :integer
#  volachievetraining :integer
#  volhours           :float
#  volnum             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  club_id            :bigint           not null
#
# Indexes
#
#  index_club_infos_on_club_id  (club_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
class ClubInfo < ApplicationRecord
    belongs_to :club
    has_many :meeting_type
end
