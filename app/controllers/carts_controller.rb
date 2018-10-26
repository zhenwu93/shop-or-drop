class CartsController < ApplicationController


  def update
    # byebug
   add_listing_to_cart_path(params[:listing_id])
   flash[:message] = "Added #{params[:listing_name]} to cart"
   # redirect_to '/carts'
   if(params[:from] == "wishlist")
     redirect_to wishlists_path
   elsif(params[:from] == "swipe")
     redirect_to swipes_path
   end

  end

  def index
    @listings = cart.map do |listing_id|
      Listing.find(listing_id)
    end
  end

  def destroy
    @buyer = Buyer.find(session[:buyer_id])
    if(params[:checkout])
      flash[:message] = "You have been checked out. Thank you for your purchase."
    end
    session[:from] = "clear_cart"
    redirect_to @buyer
  end



end
