class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :chat_memberships, dependent: :destroy
  has_many :chats, through: :chat_memberships
  has_many :messages

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end
