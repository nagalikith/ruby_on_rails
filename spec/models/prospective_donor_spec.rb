# == Schema Information
#
# Table name: prospective_donors
#
#  id                  :bigint           not null, primary key
#  contactnumber       :bigint
#  email               :string
#  internalcontactlink :string
#  name                :string
#  type                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'rails_helper'

RSpec.describe ProspectiveDonor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
