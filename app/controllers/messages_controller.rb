class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hangout

  def create
    @message = @hangout.messages.build(message_params)
    @message.user = current_user
    if @message.save
      # ActionCable.server.broadcast 'room_channel', content: @message.body
      MessageRelayJob.perform_later(@message)
      # respond_to do |format|
        # format.js { render 'create', layout: false }
      # end
    end
  end

  private

  def set_hangout
    @hangout = Hangout.find(params[:hangout_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
