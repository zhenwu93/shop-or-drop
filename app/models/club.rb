class Club < ApplicationRecord
  has_many :club_sellers
  has_many :listings
  has_many :sellers, through: :club_sellers


  validates :name, presence: true
  validates :owner_id, numericality: {only_integer: true}

  def owner_name
    Seller.find(owner_id).username
  end

end
