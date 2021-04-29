# == Schema Information
#
# Table name: case_studies
#
#  id          :bigint           not null, primary key
#  comment     :text
#  date        :date
#  participant :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  club_id     :bigint           not null
#  event_id    :bigint           not null
#
# Indexes
#
#  index_case_studies_on_club_id   (club_id)
#  index_case_studies_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#  fk_rails_...  (event_id => events.id)
#
class CaseStudy < ApplicationRecord
    belongs_to :club
    #belongs_to :event
end
