class User < ApplicationRecord
  has_many :chat_memberships, dependent: :destroy
  has_many :chats, through: :chat_memberships
  has_many :messages

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end
