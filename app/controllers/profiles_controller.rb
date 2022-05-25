class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      @users = User.where.not(id: current_user).search_by_username_and_location(params[:query])
    else
      @users = User.where.not(id: current_user)
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
    @chat = (Chat.where(sender: @user).or(Chat.where(receiver: @user))).and(Chat.where(sender: current_user)
            .or(Chat.where(receiver: current_user))).first
  end

  def dashboard
    @user = current_user
  end
end
