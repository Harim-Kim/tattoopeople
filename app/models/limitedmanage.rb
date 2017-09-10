class Limitedmanage < ApplicationRecord
  belongs_to :tattooshop
  validates :user_id, uniqueness: true
end
