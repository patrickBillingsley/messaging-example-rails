module Api
  module V1
    class ChatsController < ApplicationController
      def index
        render json: current_user.chats
      end

      def create
        @chat = Chat.new(chat_params)
        @chat.user_ids |= [ current_user.id ]

        if @chat.save
          render json: @chat, status: :created, scope: current_user
        else
          render json: { errors: @chat.errors }, status: :unprocessable_entity
        end
      end

      private

      def chat_params
        params.permit(:name, user_ids: [])
      end
    end
  end
end
