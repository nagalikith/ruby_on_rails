# == Schema Information
#
# Table name: clubs
#
#  id             :bigint           not null, primary key
#  contactnumber  :bigint
#  name           :string
#  paymentduedate :date
#  postcode       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :club do
    name { "MyString" }
    postcode { "MyText" }
    contactnumber { 1.5 }
    paymentduedate { "2021-03-29" }
  end
end
