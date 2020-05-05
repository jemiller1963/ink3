class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "hangouts:#{message.hangout.id}", {
      message: MessagesController.render(message),
      hangout_id: message.hangout.id
    }
  end
end
