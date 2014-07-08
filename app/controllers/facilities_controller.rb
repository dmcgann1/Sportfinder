class FacilitiesController < ApplicationController



  # def index
  # end

  def show
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if Facility.where(identifier: params[:identifier]).exists?
      @facility = Facility.where(identifier: params[:identifier])
    else
      @facility = Facility.google_create(@client.spot(params[:reference]))
    end
  end

  def search
    @client = GooglePlaces::Client.new(ENV['GPLACES_TOKEN'])
    if params[:sport_type].present? && params[:area].present?
      #This code is for the dummy seed data for testing prior to integrating with the google places api
      # @facilities = Facility.where("sport_type = ? AND area = ?", params[:sport_type], params[:area])

      #Below is to make into string for google map search
      @search = " #{params[:sport_type]} near #{params[:area]}"
      @facilities = @client.spots_by_query(@search)

    else
      #need to include a warning message to include sport and area
      redirect_to root_path
    end

  end

  # def new
  #   render root_path
  #   @facility = Facility.new
  # end

  # def create
  #   @facility = Facility.new
  # end

  # private

  # def facility_params
  #   params.require(:facility).permit(:sport_type, :area)
  # end
end
