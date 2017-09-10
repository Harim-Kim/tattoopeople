class Shoplike < ApplicationRecord
  belongs_to :user
  belongs_to :tattooist
  belongs_to :tattooshop
end
