class SwipesController < ApplicationController

  def index
    if !logged_in?
      redirect_to '/login'
    elsif session[:user_type] == "Seller"
      #create page saying must be logged in under a buyer account to access swipes
    end

    #otherwise handle a normal swipe
    if @swipe = Swipe.initiate_swipe(session[:buyer_id])
      @product = @swipe.product
      @listing = @swipe.listing
    else
      redirect_to buyer_path(session[:buyer_id])
    end
  end

  def create
    @swipe = Swipe.create(buyer_id: params[:swipe_buyer_id],listing_id: params[:swipe_listing_id], outcome: params[:outcome])
    # add item to wishlist/nolist or cart... swipe model?
    @swipe.debrief_swipe
    redirect_to '/swipes'
  end

  private



end
