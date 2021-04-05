# == Schema Information
#
# Table name: donations
#
#  id         :bigint           not null, primary key
#  amount     :float
#  date       :date
#  method     :string
#  recurring  :float
#  restricted :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  donor_id   :bigint           not null
#
# Indexes
#
#  index_donations_on_donor_id  (donor_id)
#
# Foreign Keys
#
#  fk_rails_...  (donor_id => donors.id)
#
require 'rails_helper'

RSpec.describe Donation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
