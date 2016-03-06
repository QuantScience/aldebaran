class FaqItemsController < ApplicationController

  def new
    @faq_item = FaqItem.new
  end

  def create
    @faq_item = FaqItem.new(faq_item_params)
    if @faq_item.save
      flash[:notice] = "The FAQ Item was saved successfully"
      redirect_to faq_items_path
    else
      flash[:alert] = "There has been an error saving the FAQ Item"
      render :action => 'new'
    end
  end

  def edit
    @faq_item = FaqItem.find(params[:id])
  end

  def update
    @faq_item = FaqItem.find(params[:id])
    if @faq_item.update(faq_item_params)
      flash[:notice] = "The FAQ Item was edited successfully"
      redirect_to faq_items_path
    else
      flash[:alert] = 'There has been an error editing the FAQ Item'
      render 'edit'
    end
  end

  def index
    @faq_items = FaqItem.all
  end

  def destroy
    @faq_item = FaqItem.find(params[:id])
    @faq_item.destroy
    redirect_to faq_items_path
  end

  private
    def faq_item_params
      params.require(:faq_item).permit(:question, :answer)
    end
end
