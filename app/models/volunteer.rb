# == Schema Information
#
# Table name: volunteers
#
#  id            :bigint           not null, primary key
#  addressone    :string
#  addresstwo    :string
#  contactnumber :integer
#  email         :string
#  hours         :float
#  name          :string
#  postcode      :string
#  target        :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Volunteer < ApplicationRecord
    belongs_to :club
end
