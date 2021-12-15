class ProductsController < ApplicationController
  before_action :action_params, only:[:edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      flash[:notice] = @product.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end
  private
  def product_params
    params.require(:product).permit(:title, :description, :supplier_id)
  end
  def action_params
    @product = Product.find(params[:id])
  end
end
