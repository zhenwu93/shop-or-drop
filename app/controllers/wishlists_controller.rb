class WishlistsController < ApplicationController
  before_action :find_buyer, only:[:index]
  before_action :find_wish_list, only:[:destroy]

  def index
    if !logged_in?
      redirect_to '/login'
    elsif session[:user_type] == "Seller"
      #create page saying must be logged in under a buyer account to access swipes
    end
    @wishlists = @buyer.wishlists
    wishlist_items
  end

  def show
  end

  def destroy
    @wishlist.destroy
    redirect_to wishlists_path
  end

  private
  def find_buyer
    @buyer = Buyer.find(session[:buyer_id])
  end

  def find_wish_list
    byebug
    @wishlist = Wishlist.find(params[:wish_id])
  end

  def wishlist_items
    @wish_hash_array = @wishlists.map do |wish|
    {wish_id: wish.id, item: wish.listing.product_name,
      description: wish.listing.product_description,
      price: wish.listing.product_price}
    end
  end

end
