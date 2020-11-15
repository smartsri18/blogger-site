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
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy

  # has_secure_password

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :password, confirmation: true, length: { :minimum => 6 }, if: :should_validate?

  def should_validate?
    (new_record? || password.present?)
  end
end
