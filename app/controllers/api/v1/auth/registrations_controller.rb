module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        private

        def sign_up_params
          params.permit(:email, :password, :password_confirmation, :username)
        end

        def account_update_params
          params.permit(:email, :password, :password_confirmation, :username)
        end
      end
    end
  end
end