class ProfilesController < ApplicationController
  def index
    @users = User.all

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
