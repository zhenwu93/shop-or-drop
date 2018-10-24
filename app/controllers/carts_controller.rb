class CartsController < ApplicationController

  def update
   # session[:nacho_ids] << params[:nacho_id]
   add_listing_to_cart(params[:listing_id])
   flash[:message] = "Added #{params[:listing_name]} to cart"
   redirect_to cart_path
 end

end
