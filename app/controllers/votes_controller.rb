class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = Review.find(params[:review_id])
    if current_user.vote_for(@review).present?
      current_user.vote_for(@review).destroy
    end

    @vote = current_user.votes.create(
      is_up: params[:is_up],
      review_id: params[:review_id]
      )

    #need to fix this redirect
    redirect_to facility_path(@review.facility_id)
  end
end
