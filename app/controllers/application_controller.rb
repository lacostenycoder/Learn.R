class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :require_admin_authentication

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def require_admin_authentication
    current_user.admin if user_signed_in?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username << :name

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :username, :avatar, :email, :password, :password_confirmation, :current_password)
    end

  end

end


