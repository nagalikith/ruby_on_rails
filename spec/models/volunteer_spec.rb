# == Schema Information
#
# Table name: volunteers
#
#  id            :bigint           not null, primary key
#  addressone    :string
#  addresstwo    :string
#  contactnumber :string
#  email         :string
#  hours         :float
#  name          :string
#  postcode      :string
#  target        :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  club_id       :integer
#
require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
