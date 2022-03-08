class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
    @event = Event.find(params[:event_id])
  end

  def create
    @participant = Participant.new()
    @event = Event.find(params[:event_id])
    @participant.user = current_user
    @participant.event = @event
    if @participant.save
      flash[:alert] = "Event added to your calender"
    end
    redirect_to event_path(@event)
  end

  def index
    @my_events = Event.where(user_id: current_user.id)
    @user = current_user
  end


  private

  def participant_params
    params.require(:participant).permit(:user, :event)
  end


end
