class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      flash[:notice] = "The Image was edited successfully"
      redirect_to images_path
    else
      flash[:alert] = 'There has been an error editing the Image'
      render 'edit'
    end
  end

  def index
    @carousel_images = Image.where(image_type: 0).order('id ASC')
    @section_images = Image.where(image_type: 1).order('id ASC')
    @slide_images = Image.where(image_type: 2).order('id ASC')
    @carousel_background = Image.where(image_type: 3).order('id ASC')[0]
  end

  private
    def image_params
      params.require(:image).permit(:title, :caption, :image)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "You don't have access to this route"
      end
    end
end
