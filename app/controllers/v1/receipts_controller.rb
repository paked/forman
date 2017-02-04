class V1::ReceiptsController < ApplicationController
  def index
    render json: {
      receipts: Receipt.all,
      current_user: @current_user
    }
  end
end
