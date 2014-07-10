class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = Review.find(params[:review_id])
    if current_user.vote_for(@review).present?
      current_user.vote_for(@review).destroy
    end

    @vote = current_user.votes.new
    @vote.is_up = params[:is_up]
    @vote.review_id = params[:review_id]

    @vote.save!
    #need to fix this redirect
    redirect_to root_path

  end

  private

  # def set_review
  #   @review = @facility.reviews.find(params[:id])
  # end

end