class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hangout

  def create
    @message = @hangout.messages.create(message_params)
    MessageChannel.broadcast_to @hangout, message: render_to_string(@message)
  end

  private

  def set_hangout
    @hangout = current_user.hangouts.find(params[:hangout_id])
  end

  def message_params
    params.require(:message).permit(:body).merge(user: current_user)
  end
end
