class Seller < ApplicationRecord
  has_secure_password validation: false
  has_many :products
  has_many :listings, through: :products
  has_many :club_sellers
  has_many :clubs, through: :club_sellers


  validates :first_name, :last_name, presence: true
  validates :email, :username, uniqueness: true
end
