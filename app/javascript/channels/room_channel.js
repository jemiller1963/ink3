import consumer from "./consumer";

const roomChannel = consumer.subscriptions.create("RoomChannel", {
  connected() {
    console.log("Hello from room_channel.js");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    active_hangout = $(
      `[data-behavior='messages'][data-hangout-id='${data.hangout_id}']`
    ).append(data.message);
    active_hangout_message = active_hangout;
  },

  send_message(hangout_id, message) {
    this.perform("send_message", { hangout_id: hangout_id, message: message });
  },
});
