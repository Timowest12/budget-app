class ApplicationController < ActionController::Base
    
    protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?
end
