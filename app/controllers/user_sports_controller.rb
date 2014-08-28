class UserSportsController < ApplicationController
  respond_to :json
  def create
    @user_sport = current_user.user_sports.create(user_sport_params)
    respond_with @user_sport
  end

  private

  def user_sport_params
    params.require(:user_sport).permit(:sport_id)
  end
end
