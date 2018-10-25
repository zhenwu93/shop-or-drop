class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(new_product_params)
    if @product.valid?

      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.full_messages
      redirect_to new_product_path
    end
  end

  def edit
  end

  def update
    @product.update(new_product_params)
    if @product.valid?
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.full_messages
      redirect_to edit_product_path(@product)
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def new_product_params

    params.require(:product).permit(:name, :description, :price, :quantity, :seller_id, :image_url)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
