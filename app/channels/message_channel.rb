class MessageChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_for Hangout.find(params['id'])
  end

  def unsubscribed
    stop_all_streams
  end
end
