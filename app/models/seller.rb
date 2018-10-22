class Seller < ApplicationRecord
  has_many :products
  
  validates :first_name, :last_name, :password, presence: true
  validates :email, :username, uniqueness: true
end
