class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from 'room_channel'
    current_user.hangouts.each do |hangout|
      stream_from "hangouts:#{hangout.id}"
    end
  end

  def unsubscribed
    stop_all_streams
  end

  def send_message(data)
    Rails.logger.info data
  end
end
