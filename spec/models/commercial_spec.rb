# == Schema Information
#
# Table name: commercials
#
#  id          :bigint           not null, primary key
#  dateawarded :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  donor_id    :bigint           not null
#
# Indexes
#
#  index_commercials_on_donor_id  (donor_id)
#
# Foreign Keys
#
#  fk_rails_...  (donor_id => donors.id)
#
require 'rails_helper'

RSpec.describe Commercial, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
