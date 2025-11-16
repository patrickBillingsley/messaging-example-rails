class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  after_create :broadcast

  private
    def broadcast
      ActionCable.server.broadcast("chat_channel", self)
    end
end
