class Shoptattoolike < ApplicationRecord
  belongs_to :tattooist
  belongs_to :user
  belongs_to :shoptattooimg
end
