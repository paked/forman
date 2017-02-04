class V1::ReportsController < ApplicationController
  def new
    r = Report.create({
      title: 'Hello there',
      description: 'I love yo face',
      user_id: @current_user.id
    })

    render json: {
      report: r,
      current_user: @current_user
    }
  end
end
