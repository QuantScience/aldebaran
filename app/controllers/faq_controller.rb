class FaqController < ApplicationController

  def new
    @faq_item = FaqItem.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @faq_items = FaqItem.all
  end

  def destroy
    @faq_item = FaqItem.find(params[:id])
    @faq_item.destroy
    redirect_to faq_index_path
  end
end
