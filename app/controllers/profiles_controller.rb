class ProfilesController < ApplicationController
  def index
    if params[:query].present?
      @users = User.search_by_username_and_location(params[:query])
    else
      @users = User.all
    end


    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "components/info_window", locals: { user: user })
      }
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
    @user = current_user
  end
end
