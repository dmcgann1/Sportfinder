class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    facility = Facility.find(params[:facility_id])
    like = current_user.likes.create(facility_id: params[:facility_id])

    redirect_to facility
  end
end
