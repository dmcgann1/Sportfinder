class FacilitiesController < ApplicationController

  def default_serializer_options
    {root: false}
  end

  def search
    if params[:sport_type].present? && params[:area].present?
      if Facility.filter_search(params[:sport_type].capitalize)
        #Make into string for google map search
        search = " #{params[:sport_type]} near #{params[:area]}"
        @facilities = CLIENT.spots_by_query(search)
        render json: @facilities
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
    render json: @facility
  end

  def favourites
    # authenticate_user!
    @facilities = Facility.find(current_user.likes.map(&:facility_id).each {|i| i})
    render json: @facilities, each_serializer: FavouriteSerializer
  end

end
