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
class Donor < ApplicationRecord
    #Associations
    has_many :donations
    has_one :trust
    has_one :commercial
    validates :name, :contactnumber, :email, presence: true
end
