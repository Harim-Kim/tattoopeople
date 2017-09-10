class ShopdesignComment < ApplicationRecord
  belongs_to :shopdesignimg
  belongs_to :user
  belongs_to :tattooist
end
