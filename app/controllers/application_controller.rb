class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  # def after_sign_in_path_for(resources)
  #   return user_path(resource)
  # end

  def current_user
    # @current_user = User.find_by_id(2)
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # rescue ActiveRecord::RecordNotFound
  end
  helper_method :current_user

  def authorize
    redirect_to "/login" unless current_user
  end
end
