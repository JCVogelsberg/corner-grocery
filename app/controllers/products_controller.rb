class ProductsController < ApplicationController
  # def new
  #   @product = Product.new
  # end

  def create
    @product = Product.new(product_params)
    # if @product.save
    #   flash[:notice] = "Product Saved!"
    #   redirect_to('/products')
    # else
    #   render 'new'
    # end
  end

  def index
    @products = Product.all
    render :json => @products
  end

  def show
    @product = Product.find(params[:id])
  end

  # def edit
  #   @product = Product.find(params[:id])
  # end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product Updated!"
      redirect_to ("/products/#{@product.id}")
    else
      render "edit"
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    flash[:notice] = "Product Deleted!"
    redirect_to("/products")
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end

end
