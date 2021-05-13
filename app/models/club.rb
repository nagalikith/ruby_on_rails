# == Schema Information
#
# Table name: clubs
#
#  id             :bigint           not null, primary key
#  contactnumber  :string
#  name           :string
#  paymentduedate :date
#  postcode       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Club < ApplicationRecord
    #Associations
    has_many :users
    has_many :case_study
    has_many :club_info

end
