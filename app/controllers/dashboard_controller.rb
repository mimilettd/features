class DashboardController < ApplicationController
  def index
    @orders = Order.all.decorate
  end
end
