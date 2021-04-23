# == Schema Information
#
# Table name: donors
#
#  id            :bigint           not null, primary key
#  contactnumber :bigint
#  email         :text
#  name          :string
#  totaldonation :integer
#  type          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :donor do
    name { "MyString" }
    type { "MyText" }
    contactnumber { 1 }
    email { "MyText" }
    totaldonation { 1 }
  end
end
