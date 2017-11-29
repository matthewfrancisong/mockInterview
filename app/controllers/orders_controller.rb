class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @orders = DeliveryOrder.all.order('created_at DESC')
    render json:{ orders: @orders }
  end

  def show
    @order = DeliveryOrder.find_by(order_id: params[:order_id])
    render json: { order: @order.order_details }
  end
end
