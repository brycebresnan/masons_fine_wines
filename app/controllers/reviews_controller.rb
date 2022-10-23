class ProductsController < ApplicationController
  
  def index
    @reviews = Review.all
    render :index
  end

  def new
    @review = Review.new
    render :new
  end

  def create
    @review = Review.new(review_params)
    if @prodcut.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def update
    # Code for updating an review goes here.
  end

  def update
    @review= Review.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    @prodcut = Review.find(params[:id])
    @prodcut.destroy
    redirect_to reviews_path
  end

  private
    def review_params
      params.require(:review).permit(:author, :content_body, :rating)
    end

end