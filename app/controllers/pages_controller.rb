class PagesController < ApplicationController
  before_action :authenticate_user!, :only => [:my_products]

  def home
    @content = Content.find(1)
    @carousel_images = Image.where(image_type: 0).order('id ASC')
    @section_images = Image.where(image_type: 1).order('id ASC')
    @slide_images = Image.where(image_type: 2).order('id ASC')
    @carousel_background = Image.where(image_type: 3).order('id ASC')[0]
  end

  def trading_apps
    @strategies = Product.where(product_type: 0).includes(:section_images).limit(6)
    @indicators = Product.where(product_type: 1).includes(:section_images).limit(6)
    @portfolios = Product.where(product_type: 2).includes(:section_images).limit(6)
  end

  def how_it_works
    @content = Content.find(1)
    @steps_1 = Step.where(step_type: 0).order('id ASC')[0]
    @steps_2 = Step.where(step_type: 1).order('id ASC')[0]
    @steps_3 = Step.where(step_type: 2).order('id ASC')[0]
  end

  def faq
    @content = Content.find(1)
    @faq_items = FaqItem.all.order('id ASC')[0]
  end

  def contact
    @content = Content.find(1)
  end

  def about_us
    @content = Content.find(1)
  end

  def strategies
    @products = Product.where(product_type: 0).includes(:section_images)
  end

  def thanks_for_purchase
  end

  def my_store
    @products = Product.includes(:product_images)
    @recent_products = Product.order(created_at: :desc).limit(5)
  end

  def indicators
    @products = Product.where(product_type: 1).includes(:section_images)
  end

  def portfolios
    @products = Product.where(product_type: 2).includes(:section_images)
  end

  def my_products
    @unactive_orders = current_user.orders.where(status: 0).includes(product: :product_images)
    @active_orders = current_user.orders.where(status: [1,2]).includes(product: :product_images)
    @related_products = Product.order("RANDOM()").limit(4)
  end
end
