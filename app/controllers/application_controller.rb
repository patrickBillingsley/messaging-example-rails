class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  # @return [User]
  def current_user
    super
  end
end
