class Listing < ApplicationRecord
  belongs_to :club
  belongs_to :seller
  belongs_to :product
end
