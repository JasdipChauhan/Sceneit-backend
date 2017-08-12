class V1::SessionsController < ApplicationController

  def show
    current_user ? head(:ok) : head(:unauthorized)
  end

  def create
    @user = User.where(email: params[:email]).first

    if @user&.valid_password?(params[:password])
      render :create, status: :created #create is mapped to v1/sessions/create.json.jbuilder
    else
      head(:unauthorized)
    end
  end

  def destroy
    if nilify_token_and_save
      head(:ok)
    else
      head(:unauthorized)
    end
  end

  private

  def nilify_token_and_save
    current_user&.authentication_token = nil
    return true if current_user.save
  end
end
