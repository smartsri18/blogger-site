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
require 'test_helper'

class ContactUsFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
