class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    if params[:query].present?
      @events = Event.search_by_name_and_description(params[:query])
    else
      @events = Event.all
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "components/event_window", locals: { event: event })
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @participant = Participant.where(event: @event, user: current_user)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      redirect_to @event, notice: 'Your event was successfully created.'
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    if @event.user == current_user
      @event = Event.find(params[:id])
      @event.update(event_params)
      redirect_to event_path(@event)
    else
      return "You have no permission to edit the event."
    end
  end

  #if @event.save
  #redirect_to #XXX, notice: 'Thanks for creating your Todi-profile!'
  #else
  #  render :new
  #end

  private

  def event_params
    params.require(:event).permit(:name, :starting_date, :ending_date, :starting_time, :ending_time, :description, :address, :latitude, :longitude, :free, :price)
  end
end
