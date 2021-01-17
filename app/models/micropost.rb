class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :added_favorite, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
