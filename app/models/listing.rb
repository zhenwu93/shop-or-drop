class Listing < ApplicationRecord
  belongs_to :club
  belongs_to :seller
  belongs_to :product
  has_many :swipes
  has_many :wishlists



  def self.float_to_money(amount)
    temp = amount.to_s
    temp_split = temp.split('.')

    if temp_split.length == 2
      if !(temp_split[1].length == 2)
        temp_split[1] += '0'
      end

        temp = temp_split.join('.')
    else
        temp += '.00'
    end
  end

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

  def quantity
    product.quantity
  end

  def image_url
    product.image_url
  end

end
