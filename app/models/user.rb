class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :image, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tattooshops, dependent: :destroy
  has_many :tattooshop_reviews, dependent: :destroy
  has_many :tattooshop_rereviews, dependent: :destroy

  validates_presence_of   :image
  validates_integrity_of  :image
  validates_processing_of :image

  has_many :shoptattoo_comments, dependent: :destroy
  has_many :shopdesign_comments, dependent: :destroy
  acts_as_followable
  acts_as_follower
  has_many :reviewlikes, dependent: :destroy
  has_many :liked_reviews, through: :reviewlikes, source: :review
  has_many :designlikes, dependent: :destroy
  has_many :liked_shopdesignimgs, through: :designlikes, source: :shopdesignimg
  has_many :shoplikes, dependent: :destroy
  has_many :liked_tattooshops, through: :shoplikes, source: :tattooshops
  has_many :shoptattoolikes, dependent: :destroy
  has_many :liked_shoptattooimgs, through: :shoptattoolikes, source: :shoptattooimg
  def is_likereview?(r)
    Reviewlike.find_by(user_id: self.id,
                       review_id: r.id).present?
  end
  def is_likeshop?(s)
    Shoplike.find_by(user_id: self.id,
                     tattooshop_id: s.id).present?
  end
  def is_likedesign?(d)
    Designlike.find_by(user_id: self.id,
                       shopdesignimg_id: d.id).present?
  end

  def is_likeshoptattoo?(t)
    Shoptattoolike.find_by(user_id: self.id,
                       shoptattooimg_id: t.id).present?
  end
end
