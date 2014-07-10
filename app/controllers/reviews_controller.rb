class ReviewsController < ApplicationController
  before_action :set_facility, :authenticate_user!

  def new
    if current_user.reviews.find_by_facility_id(@facility)
      # flash a warning
      redirect_to :back
    else
      @review = Review.new
    end
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.facility_id = params[:facility_id]

    if @review.save
      redirect_to facility_display_path(params[:facility_id])
    else
      flash.now[:alert] = @review.errors.full_messages.join(', ')
      redirect_to facility_display_path(params[:facility_id])
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to facility_display_path(params[:facility_id])
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy
    redirect_to facility_display_path(params[:facility_id])
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

end
