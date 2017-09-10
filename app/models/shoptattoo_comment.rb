class ShoptattooComment < ApplicationRecord
  belongs_to :shoptattooimg
  belongs_to :user
  belongs_to :tattooist
end
