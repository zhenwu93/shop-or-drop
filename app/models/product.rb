class Product < ApplicationRecord
  belongs_to :seller

  validates :name, presence: true
  validates :description, length: { maximum: 250 }
  validates :price, numericality: {greater_than_or_equal_to: 0, less_than: 1000}
  validates :quantity, numericality: {greater_than_or_equal_to: 0, less_than: 50}
  validates :seller_id, numericality: {only_integer: true}
  

  def seller_name
    Seller.find(seller_id).username
  end

end
