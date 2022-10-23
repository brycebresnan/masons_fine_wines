class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Wine has been added to the List."
      redirect_to products_path
    else
      flash[:alert] = "Something went wrong :/"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Wine has been updated."
      redirect_to product_path
    else
      flash[:alert] = "Something went wrong :/"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @prodcut = Product.find(params[:id])
    @prodcut.destroy
    flash[:notice] = "Wine has been deleted."
    redirect_to products_path
  end

  def landing
    @product_most = Product.most_reviews
    @product_recent = Product.recently_added_three
    render :landing
  end

  private
    def product_params
      params.require(:product).permit(:name, :country_of_origin, :cost)
    end

end