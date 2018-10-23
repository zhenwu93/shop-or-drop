module SessionsHelper

  def user_log_in(user)

    if(session[:user_type] == "Buyer")
        buyer_log_in(user)
    elsif(session[:user_type] == "Seller")
        seller_log_in(user)
    end
   #if statement for user_type session[:user_id] = buyer.id
 end
  def buyer_log_in(buyer)
    session[:buyer_id] = buyer.id
 end
  def seller_log_in(seller)
    session[:seller_id] = seller.id
 end

 def current_user
    if session[:user_type] == "Buyer"
       if session[:buyer_id]
         @current_user ||= Buyer.find_by(id: session[:buyer_id])
        end

    elsif session[:user_type] == "Seller"
       if session[:seller_id]
         @current_user ||= Seller.find_by(id: session[:seller_id])
        end
    end
  end

  def logged_in?
   !current_user.nil?
 end
end
