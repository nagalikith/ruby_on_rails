# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  all_groups  :boolean
#  comment     :text
#  date        :date
#  end_time    :datetime
#  name        :string
#  spaces_left :integer
#  start_time  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  club_id     :bigint           not null
#
# Indexes
#
#  index_events_on_club_id  (club_id)
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
