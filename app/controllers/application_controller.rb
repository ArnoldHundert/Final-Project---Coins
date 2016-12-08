class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :address1, :address2, :city, :state, :zipcode, :phnumber, :usertype])
  end
end
