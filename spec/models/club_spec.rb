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
require 'rails_helper'

RSpec.describe Club, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
