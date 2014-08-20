class UsersController < ApplicationController
  # before_action :authenticate_user!
  def default_serializer_options
    {root: false}
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
