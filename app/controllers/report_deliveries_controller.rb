class ReportDeliveriesController < ApplicationController
  def create
    @report_delivery = ReportDelivery.new(report_delivery_params)
    @report_delivery.daily_report_id = params[:id]

    if @report_delivery.save
      flash[:success] = '日報を渡しました！'
      redirect_to daily_report_path(params[:id])
    else
      flash.now[:danger] = '日報を渡せませんでした。'
      render 'daily_reports/show'
    end
  end

  private

  def report_delivery_params
    params.require(:report_delivery).permit(:user_id)
  end
  end
