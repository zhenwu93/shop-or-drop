class Swipe < ApplicationRecord
  belongs_to :buyer
  belongs_to :listing

  def self.initiate_swipe(user_id)
    buyer = Buyer.find(user_id)
    # add functionality.. get all previous swipped items on user
    listing = nil

    #TODO need to check if all products have been swipped, otherwise we endless loop trying to find one
    #something about product.count to swiped_items.count

      listing_array = Listing.all.shuffle
      listing = listing_array.find do |listing_select|
        if !(buyer.all_swiped_items.include?(listing_select.product.id))
          true
        end
      end

    if(listing)
      Swipe.new(buyer_id: buyer.id, listing_id: listing.id)
    else
      nil
    end

  end

  def debrief_swipe

    byebug
    case self.outcome

    when "like"
    #TODO ADD TO wishlist
      Wishlist.create(buyer_id: self.buyer_id, listing_id: self.listing_id)
      byebug
    when "dislike"
    #TODO ADD TO no-wishlist
    nil
    when "superlike"
    #TODO ADD to cart
      # Cart.update(buyer_id: self.buyer_id, listing_id: self.listing_id))
    end

  end

  def product
    listing.product
  end

  def product_name
    product.name
  end

  def product_id
    product.id
  end

end
