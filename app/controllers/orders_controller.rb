class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @product_images = @product.product_images
    @order = Order.new
  end

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
    @order.product_id = @product.id
    @order.user_id = current_user.id
    if @order.save
      flash[:notice] = "The Order was created successfully"
      redirect_to @order
    else
      flash[:alert] = "There has been an error creating the Order, please try again"
      render :action => 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
    @product = @order.product
    @product_images = @product.product_images
  end

  private
    def order_params
      params.require(:order).permit(:trading_software, :customer_id, :accepts_disclaimer)
    end
end
