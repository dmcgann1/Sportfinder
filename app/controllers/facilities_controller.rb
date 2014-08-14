class FacilitiesController < ApplicationController

  def search
    if params[:sport_type].present? && params[:area].present?
      if Facility.filter_search(params[:sport_type].capitalize)
        #Make into string for google map search
        search = " #{params[:sport_type]} near #{params[:area]}"
        @facilities = CLIENT.spots_by_query(search)
      else
        flash[:alert] = "Sorry we don't have any information for that sport"
        redirect_to root_path
      end
    else
      flash[:alert] = "Please enter both a sport and a location"
      redirect_to root_path
    end
  end

  def show
    @facility = Facility.identify_facility(params[:identifier], params[:id], params[:reference])
    @reviews = @facility.reviews.includes(:user)
  end

  def favourites
    authenticate_user!
    @facilities = Facility.find(current_user.likes.map(&:facility_id).each {|i| i})
  end

end
