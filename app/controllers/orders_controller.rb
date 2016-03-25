class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?, :only => [:index,:destroy]

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
    @order.status = 0
    if @order.save
      flash[:notice] = "The Order was created successfully"
      redirect_to @order
    else
      flash[:alert] = "There has been an error creating the Order, please try again"
      render :action => 'new'
    end
  end

  def index
    @orders = Order.includes(:product, :user)
  end

  def show
    @order = Order.find(params[:id])
    @product = @order.product
    @product_images = @product.product_images
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:trading_software, :customer_id, :accepts_disclaimer)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "You don't have access to this route"
      end
    end
end
