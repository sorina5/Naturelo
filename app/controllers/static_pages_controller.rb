class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def pay
    @order = Order.find(parmas[:id])
    @order.update_attribute(:status, "Pay with Paypal")
  end

end
