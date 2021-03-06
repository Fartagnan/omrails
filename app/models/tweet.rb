class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 100 }
  validates :user, presence: true
end
