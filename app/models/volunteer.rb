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
class Volunteer < ApplicationRecord
    validates :name, :contactnumber, :email, presence: true
end
