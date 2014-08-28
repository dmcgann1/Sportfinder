class ApplicationController < ActionController::Base
  respond_to :html, :json
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery

  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  # def after_sign_in_path_for(resource)
  #   '/#/activityfeed'
  # end
# Uncertain if I need to set the sign out redirect as Sign out is not currently working
  # def after_sign_out_path_for(resource)
  #   '/#/sports'
  # end

  protected

  def verified_request?
    super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
  end
end
