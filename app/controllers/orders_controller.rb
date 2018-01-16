class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @order.line_items.build
  end

  def create
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
      redirect_to order_receipt_path(@order)
    else
      render :new
    end
  end

  private
  def order_params
    params.require(:order).permit(line_items_attributes: [:id, :name, :product_id ])
  end

  def products
    @products ||= Product.all
  end
  helper_method :products
end
