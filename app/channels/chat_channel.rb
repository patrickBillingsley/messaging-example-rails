class ChatChannel < ApplicationCable::Channel
  def subscribed
    puts "Subscribed!!!"
  end
end
