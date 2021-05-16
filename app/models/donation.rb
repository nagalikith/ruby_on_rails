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

    #Function to add a new donation and increment the total donations of the respective donor
    def submitDonation(donor_id, amount, recurring, restricted, date)
        Donation.create(donor_id: donor_id, amount: amount, date: date, restricted: restricted, recurring: recurring)
        donor = Donor.find_by(id: donor_id)
        current_total = donor.totaldonation
        donor.update(totaldonation: (current_total+amount.to_f))
    end

    def deleteDonation(donation_id)
        donation = Donation.find_by(id: donation_id)
        amount = donation.amount
        donation.destroy
        id_of_donor = donation.donor_id
        current_total = Donor.find_by(id: id_of_donor).totaldonation
        Donor.find_by(id: id_of_donor).update(totaldonation: (current_total-amount.to_f))
    end

end
