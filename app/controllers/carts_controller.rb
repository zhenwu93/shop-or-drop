class CartsController < ApplicationController

  def create
  end

  def edit
  end

  def update
    # byebug
   add_listing_to_cart_path(params[:listing_id])
   flash[:message] = "Added #{params[:listing_name]} to cart"
   # redirect_to '/carts'
   # byebug
   if(params[:from] == "wishlist")
     redirect_to wishlists_path

   elsif(params[:from] == "swipe")
     # byebug
     redirect_to swipes_path
   end

  end

end
