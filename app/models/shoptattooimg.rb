class Shoptattooimg < ApplicationRecord
  belongs_to :tattooshop
  mount_uploader :image, AvatarUploader

  has_many :shoptattoolikes, dependent: :destroy
  has_many :liked_users, through: :shoptattoolikes, source: :user

  has_many :shoptattoo_comments, dependent: :destroy
  validates :image, presence: true
end
