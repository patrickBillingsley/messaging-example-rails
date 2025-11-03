class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
    puts "Subscribed!!!"
  end
end
