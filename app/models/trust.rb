# == Schema Information
#
# Table name: trusts
#
#  id            :bigint           not null, primary key
#  datesubmitted :date
#  thankdate     :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  donor_id      :bigint           not null
#
# Indexes
#
#  index_trusts_on_donor_id  (donor_id)
#
# Foreign Keys
#
#  fk_rails_...  (donor_id => donors.id)
#
class Trust < ApplicationRecord
    belongs_to :donor
end
