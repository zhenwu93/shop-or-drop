class ListingsController < ApplicationController

  def index

    @listings = Seller.find(session[:seller_id]).listings

  end

  def new
    @listing  = Listing.new
    @seller = Seller.find(session[:seller_id])
    @products = @seller.products
    @clubs = @seller.clubs
  end

  def create
    @listing = Listing.create(seller_id: session[:seller_id], club_id: 1, product_id: params[:listing][:product_id])
    if @listing.valid?

      redirect_to listing_path(@listing)
    else
      flash[:error] = @listing.errors.full_messages
      redirect_to new_listing_path
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    @products = @listing.seller.products
  end

  def update
    @listing.update(new_listing_params)
    if @listing.valid?
      redirect_to listing_path(@listing)
    else
      flash[:error] = @listing.errors.full_messages
      redirect_to edit_listing_path(@listing)
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    seller = @listing.seller
    @listing.destroy
    redirect_to seller_path(seller.id)
  end


  def show
    @listing = Listing.find(params[:id])
  end

  def new_listing_params
    params.require(:listing).permit(:seller_id, :club_id, :product_id )
  end

end
