# == Schema Information
#
# Table name: donors
#
#  id            :bigint           not null, primary key
#  contactnumber :string
#  email         :string
#  name          :string
#  totaldonation :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'rails_helper'

RSpec.describe Donor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
