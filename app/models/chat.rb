class Chat < ApplicationRecord
  has_many :chat_memberships, dependent: :destroy
  has_many :users, through: :chat_memberships
end
