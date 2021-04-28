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
#  club_id       :integer
#
class Volunteer < ApplicationRecord
    validates :name, :addressone, :contactnumber, :email, :postcode, presence: true
    has_many :events, through: :event_volunteers
    has_many :event_volunteers
end
