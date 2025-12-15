module Api
  module V1
    class MessagesController < ApplicationController
      before_action :set_chat

      def index
        render json: @chat.messages
      end

      def create
        sender = User.find(params[:sender_id])
        message = @chat.messages.create!(sender:, body: params[:body])

        render json: message
      end

      private

      def set_chat
        @chat = Chat.find(params[:chat_id])
      end
    end
  end
end
