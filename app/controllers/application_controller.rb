class ApplicationController < ActionController::Base

  def cart #method for a "cart"
    session[:cart] ||= []
  end

  def add_product_to_cart(product_id) #add a product into cart
    cart << product_id
  end

end
