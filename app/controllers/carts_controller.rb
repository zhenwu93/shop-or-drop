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

end
