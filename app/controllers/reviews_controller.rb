class ReviewsController < ApplicationController
  before_filter :load_product
  before_filter :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]

  def new
    @review = Review.new
  end


  def show
    @review = Review.find(params[:id])
  end

  def create

    @review = Review.new( 
      :content => params[:review][:content],
      :product_id => @product.id,
      :user_id => current_user.id
      ) 

  #   if @review.save
  #     redirect_to product_path(@product), notice: 'Review created successfully'
  #   else
  #     render :action => :show
  #   end
  # end
    respond_to do |format|
      if @review.save
        format.html { redirect_to product_path(@product.id), notice: 'Review added.' }
        format.js {} # This will look for /views/reviews/create.js.erb
      else
        format.html { render "products/show", notice: 'There was an error.'  }
        format.js {} # This will look for /views/reviews/create.js.erb
      end
    end    
end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  def edit
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

end
