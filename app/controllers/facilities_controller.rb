class FacilitiesController < ApplicationController

  def show
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if Facility.where(identifier: params[:identifier]).exists?
      @facility = Facility.find_by_identifier(params[:identifier])
    elsif
      Facility.where(id: params[:facility_id]).exists?
      @facility = Facility.find(params[:facility_id])
    else
      @facility = Facility.google_create(@client.spot(params[:reference]))
    end
  end

  def search
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if params[:sport_type].present? && params[:area].present?

      #Make into string for google map search
      @search = " #{params[:sport_type]} near #{params[:area]}"
      @facilities = @client.spots_by_query(@search)

    else
      #need to include a warning message to include sport and area
      redirect_to root_path
    end

  end
end
