class Api::V1::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    messages = Message.where(chat_id: params[:chat_id])

    render json: messages
  end

  def create
    chat = Chat.find(params[:chat_id])
    user = User.find(params[:sender_id])
    message = Message.create!(chat:, user:, body: params[:body])

    render json: message
  end
end
