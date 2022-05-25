class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_user_location!, if: :storable_location?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :location, :latitude, :longitude, :description, tags: [], :photo])
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :location, :latitude, :longitude, :description, :tags => [], :photo) }
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, { tags: [] }, :username, :location, :latitude, :longitude, :description, :photo)
    end

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username, :location, :latitude, :longitude, :description, tags: [], :photo])
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, { tags: [] }, :username, :location, :latitude, :longitude, :description, :photo)
    end
  end

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
