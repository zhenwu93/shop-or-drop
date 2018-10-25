class BuyersController < ApplicationController
    before_action :find_buyer, only: [:show, :edit, :update, :destroy]

  def index
    @buyers = Buyer.all
  end

  def show
    @listings = cart.map do |listing_id|
      Listing.find(listing_id)
    end
  end

  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.create(new_buyer_params)
    if @buyer.valid?
      flash[:notice] = "Your account has been successfully created!"
      redirect_to '/login'
    else
      flash[:error] = @buyer.errors.full_messages
      redirect_to new_buyer_path
    end
  end

  def edit
  end

  def update
    @buyer.update(new_buyer_params)
    if @buyer.valid?
      redirect_to buyer_path(@buyer)
    else
      flash[:error] = @buyer.errors.full_messages
      redirect_to edit_buyer_path(@buyer)
    end
  end

  def destroy
    @buyer.destroy
    logout
  end

  private

  def new_buyer_params

    params.require(:buyer).permit(:first_name, :last_name, :password, :email, :username)
  end

  def find_buyer
    @buyer = Buyer.find(params[:id])
  end

end
