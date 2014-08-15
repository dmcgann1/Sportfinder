class UserSportsController < ApplicationController
  def create
    @user_sport = current_user.user_sports.create(sport_id: params[:sport_id])
    if @user_sport.save
      flash[:notice] = "Sport Liked!"
      redirect_to root_url
    else
      flash[:error] = "Uh oh - mucho error"
      redirect_to root_url
    end
  end
end
