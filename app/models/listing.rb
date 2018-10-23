class Listing < ApplicationRecord
  belongs_to :club
  belongs_to :seller
  belongs_to :product
  has_many :swipes


  def product_name
    product.name
  end

  def seller_id
    seller.id
  end

  def club_id
    club.id
  end

  def seller_username
    seller.username
  end

  def price
    product.price
  end

end
