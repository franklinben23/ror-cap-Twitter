class Tweet < ApplicationRecord
  validates :body, presence: true, length: { maximum: 170-,
  too_long: '170 characters in comment is the maximum allowed.' }

  belongs_to :user
  has_many :likes, dependent: :destroy
end
