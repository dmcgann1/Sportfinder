class FacilitiesController < ApplicationController

  # def index
  # end

  # def show
  #   @facility = Facility.new
  # end

  def search
    if params[:sport_type].present? && params[:area].present?
      @facilities = Facility.where("sport_type = ? AND area = ?", params[:sport_type], params[:area])

      #Below is to make into string for google map search
      # @search = " #{params[:sport_type]} near #{params[:area]}"
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
