class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validates :images, presence: true, blob: { content_type: :image }
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
  has_many :comments, dependent: :destroy
end
