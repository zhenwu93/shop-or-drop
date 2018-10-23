class Buyer < ApplicationRecord
  has_many :swipes
  # has_many :payments
  # has_one :cart
  # has_one :do_not_want_list
  has_one :wishlist
  has_secure_password validation: false

  validates :first_name, :last_name, presence:true
  validates :email, :username, uniqueness: true

  # def self.login(password, email)
  #   self.find()
  # end

  def password
  end
end
