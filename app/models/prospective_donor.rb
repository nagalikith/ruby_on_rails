# == Schema Information
#
# Table name: prospective_donors
#
#  id                  :bigint           not null, primary key
#  contactnumber       :string
#  email               :string
#  internalcontactlink :string
#  name                :string
#  type                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class ProspectiveDonor < ApplicationRecord

    def makeReal(prospective_donor_id)
        prospective = ProspectiveDonor.find(prospective_donor_id)
        Donor.new(name: prospective.name, contactnumber: prospective.contactnumber, email: prospective.email, totaldonation: 0).save
        prospective.destroy
        
    end
end
