# == Schema Information
#
# Table name: donations
#
#  id         :bigint           not null, primary key
#  amount     :float
#  date       :date
#  recurring  :string
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
class Donation < ApplicationRecord
    belongs_to :donor

    def submitDonation(donor_id, amount, recurring, restricted, date)
        Donation.create(donor_id: donor_id, amount: amount, date: date, restricted: restricted, recurring: recurring)
        current_total = Donor.find_by(id: donor_id).totaldonation
        Donor.find_by(id: donor_id).update(totaldonation: (current_total+amount))
    end

end
