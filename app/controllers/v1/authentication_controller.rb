class V1::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    @user = user

    if user
      render json: {
        success: true,
        token: JSONWebToken.encode(user_id: @user.id)
      }
    else
      render json: {
        success: false
      }
    end
  end

  private

  def user
    user = User.find_by_email(params[:email])
    return user if user && user.authenticate(params[:password])

    # errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
