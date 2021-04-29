# == Schema Information
#
# Table name: donors
#
#  id            :bigint           not null, primary key
#  contactnumber :string
#  email         :text
#  name          :string
#  totaldonation :integer
#  type          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Donor < ApplicationRecord
    has_many :donations
end
