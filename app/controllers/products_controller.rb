class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "The Product was saved successfully"
      redirect_to products_path
    else
      flash[:alert] = "There has been an error saving the Product"
      render :action => 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def index
    @products = Product.all
  end

  private
    def product_params
      params.require(:product).permit(:title, :resume, :product_type, :subtitle, :price, :specifications, :section_title, :section_paragraph_1, :section_paragraph_2, :quality_1, :quality_2, :quality_3, :quality_4)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "You don't have access to this route"
      end
    end
end