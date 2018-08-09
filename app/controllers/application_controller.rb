class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  devise_group :user, contains: [:employee, :admin]

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:type,:id,:first_name,:last_name,:address])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type,:first_name,:last_name,:address])
  end

  private

  def authenticate_admin!
    unless admin_signed_in?
      flash[:notice] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end


end
