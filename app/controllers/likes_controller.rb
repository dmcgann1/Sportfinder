class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @facility = Facility.find(params[:facility_id])
    @like = current_user.likes.new
    @like.facility_id = params[:facility_id]
    @like.save!

    #need to redirect this back to page
    redirect_to facility_path(@facility)
  end
end
