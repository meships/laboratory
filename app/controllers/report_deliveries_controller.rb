class ReportDeliveriesController < ApplicationController
    def create
      @delivery = ReportDelivery.new(report_delivery_params)
      if @delivery.save
        redirect_to daily_report_path(@delivery.daily_report_id), notice: '日報を渡しました'
      else
        redirect_to daily_report_path(@delivery.daily_report_id), alert: '日報を渡せませんでした'
      end
    end
  
    private
  
    def report_delivery_params
      params.require(:report_delivery).permit(:user_id, :daily_report_id)
    end
  end
