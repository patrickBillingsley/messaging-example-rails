class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :sender, class_name: "User", foreign_key: "user_id"

  after_create :broadcast

  private
    def broadcast
      ActionCable.server.broadcast("chat_channel", self)
    end
end
