class PagesController < ApplicationController
  def home
    @content = Content.find(1)
    @carousel_images = Image.where(image_type: 0)
    @section_images = Image.where(image_type: 1)
    @slide_images = Image.where(image_type: 2)
    @carousel_background = Image.where(image_type: 3)[0]
  end

  def trading_apps
    @strategies = Product.where(product_type: 0).includes(:section_images).limit(6)
    @indicators = Product.where(product_type: 1).includes(:section_images).limit(6)
    @portfolios = Product.where(product_type: 2).includes(:section_images).limit(6)
  end

  def how_it_works
    @content = Content.find(1)
    @steps_1 = Step.where(step_type: 0)
    @steps_2 = Step.where(step_type: 1)
    @steps_3 = Step.where(step_type: 2)
  end

  def faq
    @content = Content.find(1)
    @faq_items = FaqItem.all
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


  def indicators
    @products = Product.where(product_type: 1).includes(:section_images)
  end

  def portfolios
    @products = Product.where(product_type: 2).includes(:section_images)
  end
end
