# == Schema Information
#
# Table name: contact_us_forms
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  message    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ContactUsForm < ApplicationRecord

  validates :email, :message, presence: true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
