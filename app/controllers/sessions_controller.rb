class SessionsController < ApplicationController
  def new
    session[:user_type] = params[:user_type]
  end

  def splash
      render 'splash'
  end

  def create
    
    if (session[:user_type] == "Buyer")
      buyer = Buyer.find_by(email: params[:session][:email].downcase)
      if buyer && buyer.authenticate(params[:session][:password])

        buyer_log_in buyer
        redirect_to buyer
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    elsif (session[:user_type] == "Seller")
      seller = Seller.find_by(email: params[:session][:email].downcase)
      if seller && seller.authenticate(params[:session][:password])

        seller_log_in seller
        redirect_to seller
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    end
  end

  def destroy
    session.delete :username
  end


end
