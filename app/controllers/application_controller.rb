class ApplicationController < ActionController::API
  before_action :authenticate_request

  def authenticate_request
    if !current_user 
      render json: {
        error: 'Not authorized', success: false
      }, status: 401
    end
  end

  private

  def current_user
    token = auth_token
    return @current_user = User.find(token[:user_id]) if token

    nil
  end

  def auth_token
    @auth_token ||= JSONWebToken.decode(auth_header)
  end

  def auth_header
    if request.headers['Authorization'].present?
      return request.headers['Authorization'].split(' ').last
    end

    nil
  end
end
