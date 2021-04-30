# == Schema Information
#
# Table name: club_data
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :bigint
#
require 'rails_helper'

RSpec.describe ClubDatum, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
