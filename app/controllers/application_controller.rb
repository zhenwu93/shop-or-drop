class ApplicationController < ActionController::Base
  before_action :require_login
  skip_before_action :require_login, only: [:index]
  before_action :authorized
  include SessionsHelper
end

  def cart #method for a "cart"
    session[:cart] ||= []
  end

  def add_listing_to_cart(listing_id) #add a product into cart
    cart << listing_id
  end

  def show_cart#get all the items within the cart and render
    @cart_items = Listing.find(cart)
  end

  def logout
    if session[:user_type] == "Buyer"
        session.delete(:buyer_id)
    elsif
      session[:user_type] == "Seller"
      session.delete(:seller_id)
    end
    session.delete(:user_type)
    session.delete(:cart)
    redirect_to login_path
  end

  def current_user
    if(session[:user_type] == "Buyer")
      @user = Buyer.find_by({ id: session[:buyer_id] })
    elsif(session[:user_type] == "Seller")
      @user = Seller.find_by({ id: session[:seller_id] })
    end

 end

  def logged_in?
    !!current_user
  end

  def require_login
    if(params[:buyer_id] == "Buyer")
      return head(:forbidden) unless session.include? :user_id
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
