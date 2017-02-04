class V1::ReceiptsController < ApplicationController
  def index
    render json: {
      receipts: Receipt.all,
      current_user: @current_user
    }
  end

  def new
    report = Report.find(params[:report_id])

    receipt = Receipt.create({
      item_name: 'Peanut Butter',
      price: 66.6,
      image_url: 'http://placehold.it/200x200',
      report_id: report.id
    })

    render json: {
      receipt: receipt,
      current_user: @current_user
    }
  end
end
