# == Schema Information
#
# Table name: volunteers
#
#  id            :bigint           not null, primary key
#  contactnumber :string
#  email         :string
#  hours         :float
#  name          :string
#  target        :float
#  youngPerson   :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  club_id       :integer
#
require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
