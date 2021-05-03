# == Schema Information
#
# Table name: donors
#
#  id            :bigint           not null, primary key
#  contactnumber :string
#  email         :string
#  name          :string
#  totaldonation :integer
#  type          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Donor < ApplicationRecord
    #Associations
    has_many :donations
    validates :name, :contactnumber, :email, presence: true
end
