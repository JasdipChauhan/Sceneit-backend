class ApplicationController < ActionController::API
  acts_as_token_authentication_handler_for User, fallback: :none

  def welcome
    render json: "Welcome to SceneIt", status: :ok
  end

end
