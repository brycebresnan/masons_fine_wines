class ReviewsController < ApplicationController
  before_action :authorize, except: [:show]
  before_action :admin_authorize, only: [:create, :destry, :edit, :update]

  def index
    @reviews = Review.all
    render :index
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review has been created successfully!"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Something went wrong :/"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review has been updated."
      redirect_to product_path(@review.product)
    else
      flash[:alert] = "Something went wrong :/"
      @product = Product.find(params[:product_id])
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review has been deleted."
    redirect_to product_path(@review.product)
  end

  private
    def review_params
      params.require(:review).permit(:author, :content_body, :rating)
    end

end