class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)

    if @product.save
      render :json => @product, :status => 201
    else
      render :json => {:errors => @product.errors}, status => 422
    end
  end


  def index
    @products = Product.all
    render :json => @products
  end


  def show
    @product = Product.find(params[:id])
    render :json => @product
  end


  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      head :no_content
    else
      render :json => {:errors => @product.errors}, status => 422
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    head :no_content
  end


  private


  def product_params
    params.fetch(:product).permit(:name, :price, :description)
  end

end





