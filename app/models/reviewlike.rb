class Reviewlike < ApplicationRecord
  belongs_to :user
  belongs_to :tattooshop_rereview
  belongs_to :tattooist
end
