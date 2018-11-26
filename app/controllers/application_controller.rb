# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attributes = [:email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sing_up, keys: added_attributes)
  end
end