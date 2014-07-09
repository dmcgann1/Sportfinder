class ReviewsController < ApplicationController
  before_action :set_facility, :authenticate_user!

  def new
    @review = Review.new
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

  private

  def review_params
    params.require(:review).permit(:body)
  end

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

end
