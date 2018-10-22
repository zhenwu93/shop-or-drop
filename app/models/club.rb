class Club < ApplicationRecord
  validates :name, presence: true
  validates :owner_id, numericality: {only_integer: true}

  def owner_name
    Seller.find(owner_id).username
  end

end
