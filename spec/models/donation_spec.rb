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
require 'rails_helper'

RSpec.describe Donation, type: :model do

  describe "#donation_added" do
    it 'adds a new donation to a donor to increment their totaldonation' do
      donor = Donor.create(id: 10, name: "Test", email: "test@donor.com", contactnumber: "07567324322", totaldonation: 0.0)
      Donation.new.submitDonation(10, 100.10, "One Off", "None", "15/05/2021")
      donor = Donor.find_by(id: 10)
      expect(donor.totaldonation).to eq(100.1)
    end
  end

  describe "#donation_removed" do
    it "removes an existing donation to reduce the totaldonation of the donor" do
      donor = Donor.create(id: 10, name: "Test", email: "test@donor.com", contactnumber: "07567324322", totaldonation: 10.0)
      Donation.create(id: 1, amount: 10.0, date: "17/05/2021", recurring: "One Off", restricted: "None", donor_id: 10)
      Donation.new.deleteDonation(1)
      donor = Donor.find_by(id: 10)
      expect(donor.totaldonation).to eq 0.0
    end
  end

end
