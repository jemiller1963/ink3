$(document).on("turbolinks:load", function () {
  $("#new_message").on("keypress", function (e) {
    if (e && e.keyCode === 13) {
      e.preventDefault();
      return $(this).submit();
    }
  });

  return $("#new_message").on("submit", function (e) {
    e.preventDefault();
    hangout_id = $("[data-behavior='messages']").data("hangout-id");
    body = $("#message_body");
    console.log("SUBMITTED");
    return roomChannel.send_message(hangout_id, body.val());
  });
});
