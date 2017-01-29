module V1
  class PingController < ApplicationController
    def ping
      render json: { message: 'Welcome!' }
    end
  end
end
