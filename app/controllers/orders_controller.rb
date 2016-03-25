class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @product_images = @product.product_images
    @order = Order.new
  end

  private
    def product_params
      params.require(:product).permit(:trading_software, :customer_id, :accepts_disclaimer)
    end
end
