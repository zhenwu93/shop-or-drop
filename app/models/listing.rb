class Listing < ApplicationRecord
  belongs_to :club
  belongs_to :seller
  belongs_to :product
  has_many :swipes
  has_many :wishlists


  def product_name
    product.name
  end

  def product_description
      product.description
  end

  def product_price
      product.price
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
