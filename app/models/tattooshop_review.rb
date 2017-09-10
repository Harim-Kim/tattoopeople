class TattooshopReview < ApplicationRecord
  belongs_to :tattooshop
  has_many :rereviews, dependent: :destroy
  belongs_to :user
  belongs_to :tattooist

  has_many :reviewlikes, dependent: :destroy
  has_many :liked_users, through: :reviewlikes, source: :user
  has_many :liked_tattooists, through: :reviewlikes, source: :tattooist

end
