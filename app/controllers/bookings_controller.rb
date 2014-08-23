class BookingsController < ApplicationController

  def default_serializer_options
    {root: false}
  end

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.create(booking_params)
    render json: @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :sport_id, :facility_id, :time, user_bookings_attributes: [:user_id, :booking_id])
  end
end
