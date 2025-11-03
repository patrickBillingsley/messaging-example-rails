class Api::V1::MessagesController < ApplicationController
  def index
    messages = Message.where(chat_id: params[:chat_id])

    render json: messages
  end
end
