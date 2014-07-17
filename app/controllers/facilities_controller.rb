class FacilitiesController < ApplicationController

  def show
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if Facility.where(identifier: params[:identifier]).exists?
      @facility = Facility.find_by_identifier(params[:identifier])
    elsif Facility.where(id: params[:id]).exists?
      @facility = Facility.find(params[:id])
    else
      @facility = Facility.google_create(@client.spot(params[:reference]))
    end
  end

  def search
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if params[:sport_type].present? && params[:area].present?
      if Facility.filter_search(params[:sport_type].capitalize)
        #Make into string for google map search
        @search = " #{params[:sport_type]} near #{params[:area]}"
        @facilities = @client.spots_by_query(@search)
      else
        flash[:alert] = "Sorry we don't have any information for that sport"
        redirect_to root_path
      end
    else
      flash[:alert] = "Please enter both a sport and a location"
      redirect_to root_path
    end
  end

  def favourites
    authenticate_user!
    @facilities = Facility.find(current_user.likes.map(&:facility_id).each {|i| i})
  end
end
