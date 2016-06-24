class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :error, :danger, :info

  include SessionsHelper

  # def after_sign_in_path_for(resources)
  #   return user_path(resource)
  # end

  def current_user
    p params
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      nil
    end
  end

  helper_method :current_user

  def authorize
    redirect_to "/login" unless current_user
  end
end
