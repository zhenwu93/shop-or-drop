class ApplicationController < ActionController::Base
  before_action :require_login
  skip_before_action :require_login, only: [:index]
  include SessionsHelper
end

  def cart #method for a "cart"
    session[:cart] ||= []
  end

  def add_listing_to_cart(listing_id) #add a product into cart
    cart << listing_id
  end

  def show_cart#get all the items within the cart and render
    @cart_items = Product.find(cart)
  end

  def require_login
    if(params[:buyer_id] == "Buyer")
      return head(:forbidden) unless session.include? :user_id
  end

end
