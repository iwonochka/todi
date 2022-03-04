class ChatsController < ApplicationController
  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  def create
    @chat = Chat.new
    @chat.sender = current_user
    @chat.receiver = User.find(params[:profile_id])
    if @chat.save
      redirect_to chat_path(@chat)
    else
      redirect_to profile_path(User.find(params[:profile_id]))
    end
  end
end
