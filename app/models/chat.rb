class Chat < ApplicationRecord
  has_many :chat_memberships, dependent: :destroy
  has_many :users, through: :chat_memberships

  has_many :messages, dependent: :destroy
  has_one :last_message, -> { order(created_at: :desc) }, class_name: "Message"

  validates :name, uniqueness: true
end
