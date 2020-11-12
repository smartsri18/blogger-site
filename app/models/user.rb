# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  username             :string           not null
#  email                :string           not null
#  password_digest      :string           not null
#  password_reset_token :string
#  image_url            :string
#  user_type            :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class User < ApplicationRecord
  has_many :articles, dependent: :destroy
end
