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
FactoryBot.define do
  factory :donor do
    name { "MyString" }
    #type { "MyText" }
    contactnumber { 1 }
    email { "MyText" }
    totaldonation { 1.0 }
  end
end
