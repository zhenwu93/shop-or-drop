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

  def total_swipes
    self.swipes.count
  end

  def total_like_swipes
    array = self.swipes.select do |swipe|
      if(swipe.outcome == "like")
        swipe
      end
    end

    array.count
  end

  def total_dislike_swipes
    array = self.swipes.select do |swipe|
      if(swipe.outcome == "dislike")
        swipe
      end
    end


    array.count
  end

  def total_superlike_swipes
    array = self.swipes.select do |swipe|
      if(swipe.outcome == "superlike")
        swipe
      end
    end

    array.count

  end

  def total_positive_swipes
    total_like_swipes + total_superlike_swipes
  end

  def total_percent_positive
    ( total_positive_swipes.to_f / total_swipes) * 100
  end

  def get_swipe_stats
    swipes = self.swipes
  end




end
