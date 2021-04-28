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
end
