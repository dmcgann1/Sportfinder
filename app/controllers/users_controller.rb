class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    # Sports is here only for testing reasons - will be moved once views are structured more thoroughly
    @sports = Sport.all
  end
end
