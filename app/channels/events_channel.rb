class EventsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from current_user
    # stream_from "receiver:#{current_receiver_id}"
    stream_from "events_#{current_user.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
