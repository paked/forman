class V1::ReceiptsController < ApplicationController
  def index
    render json: { items: Receipt.all }
  end
end
