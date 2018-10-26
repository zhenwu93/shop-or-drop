class SellersController < ApplicationController
  before_action :find_seller, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:new, :create]

  def index
    @sellers = Seller.all
  end

  def show
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.create(new_seller_params)
    if @seller.valid?

      redirect_to seller_path(@seller)
    else
      flash[:error] = @seller.errors.full_messages
      redirect_to new_seller_path
    end
  end

  def edit
  end

  def update
    @seller.update(new_seller_params)
    if @seller.valid?
      redirect_to seller_path(@seller)
    else
      flash[:error] = @seller.errors.full_messages
      redirect_to edit_seller_path(@seller)
    end
  end

  def destroy
    @seller.destroy
    redirect_to sellers_path
  end

  private

  def new_seller_params
    params.require(:seller).permit(:first_name, :last_name, :password, :email, :username)
  end

  def find_seller
    @seller = Seller.find(params[:id])
  end

end
