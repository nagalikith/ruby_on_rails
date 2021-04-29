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
#
# Indexes
#
#  index_case_studies_on_club_id  (club_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
require 'rails_helper'

RSpec.describe CaseStudy, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
