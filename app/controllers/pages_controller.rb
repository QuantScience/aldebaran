class PagesController < ApplicationController
  def home
    @content = Content.find(1)
  end

  def trading_apps
    @content = Content.find(1)
  end

  def how_it_works
    @content = Content.find(1)
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

  def show_product
    @content = Content.find(1)
  end

  def strategies
    @content = Content.find(1)
  end

  def portfolios
    @content = Content.find(1)
  end

  def indicators
    @content = Content.find(1)
  end
end
