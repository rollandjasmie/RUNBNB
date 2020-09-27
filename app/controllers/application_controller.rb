class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name,:sexe, :name,:mobile,:date_of_birth,:adresse, :email,:urgence, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name,:sexe, :name,:mobile,:date_of_birth,:adresse, :email,:urgence, :password, :current_password)}
  end
end