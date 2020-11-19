# == Schema Information
#
# Table name: articles
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  title          :string           not null
#  content        :text             not null
#  category       :string           not null
#  published_date :datetime         not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :photoblog
  
  validates :title, :content, :category, presence: true
end
