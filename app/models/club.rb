# == Schema Information
#
# Table name: clubs
#
#  id             :bigint           not null, primary key
#  contactnumber  :integer
#  name           :string
#  paymentduedate :date
#  postcode       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Club < ApplicationRecord
end
