class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :message, presence: true
end
