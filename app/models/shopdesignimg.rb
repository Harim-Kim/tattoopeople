class Shopdesignimg < ApplicationRecord
  belongs_to :tattooshop
  mount_uploader :image, AvatarUploader

  has_many :designlikes, dependent: :destroy
  has_many :liked_users, through: :designlikes, source: :user
  has_many :liked_tattooists, through: :designlikes, source: :tattooist

  has_many  :shopdesign_comments, dependent: :destroy

  validates :image, presence: true
end
