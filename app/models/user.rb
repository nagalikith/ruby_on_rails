# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  end_time               :datetime
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  manager                :boolean
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  start_time             :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  club_id                :bigint           not null
#
# Indexes
#
#  index_users_on_club_id               (club_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (club_id => clubs.id)
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :secure_validatable
  #secure_validatable ensures passwords are able to have more strength
  
  belongs_to :club

end
