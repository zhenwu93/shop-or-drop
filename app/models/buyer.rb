class Buyer < ApplicationRecord
  has_many :swipes
  # has_many :payments
  # has_one :cart
  # has_one :do_not_want_list
  has_many :wishlists
  has_secure_password validation: false

  validates :first_name, :last_name, presence:true
  validates :email, :username, uniqueness: true

  # def self.login(password, email)
  #   self.find()
  # end

  def password
  end

  def all_swiped_items
    output = self.swipes.collect do |swipe|
      swipe.product_id
    end

    if(output == nil)
      output = []
    end

    output

  end

end
