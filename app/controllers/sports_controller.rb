class SportsController < ApplicationController

  def default_serializer_options
    {root: false}
  end

  def index
    @sports = Sport.all

    # render json: @sports
  end
end
