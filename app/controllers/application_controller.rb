class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected

  def devise_parameter_sanitizer
    if resource_class == Admin
      Admin::ParameterSanitizer.new(Admin, :admin, params)
    else
      super # Use the default one
    end
  end
end
