class TattooshopRereview < ApplicationRecord
  belongs_to :tattooshop_review
  belongs_to :user
  belongs_to :tattooist
end
