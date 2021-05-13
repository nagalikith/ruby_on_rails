# == Schema Information
#
# Table name: case_studies
#
#  id          :bigint           not null, primary key
#  comment     :text
#  date        :date
#  event       :string
#  participant :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  club_id     :bigint           not null
#
# Indexes
#
#  index_case_studies_on_club_id  (club_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
class CaseStudy < ApplicationRecord
    belongs_to :club
    #belongs_to :event
end
