class Product < ApplicationRecord
  belongs_to :seller
  has_one :listing
  validates :name, presence: true
  validates :description, length: { maximum: 5000}
  validates :price, numericality: {greater_than_or_equal_to: 0, less_than: 10000}
  validates :quantity, numericality: {greater_than_or_equal_to: 0, less_than: 50}
  validates :seller_id, numericality: {only_integer: true}


  def seller_name
    Seller.find(seller_id).username
  end

end
