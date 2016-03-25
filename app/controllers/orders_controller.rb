class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @product_images = @product.product_images
    @order = Order.new
  end
end
