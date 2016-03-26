class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to root_path
    else
      flash[:alert] = 'ERROR'
      render 'edit'
    end
  end

  private
    def content_params
      params.require(:content).permit(:slide_1_title, :slide_1_subtitle, :slide_2_title, :slide_2_subtitle, :slide_3_title, :slide_3_subtitle, :carousel_link_1, :carousel_link_1_text, :carousel_link_2, :carousel_link_2_text, :carousel_link_3, :carousel_link_3_text, :feature_1_title, :feature_1_text, :feature_2_title, :feature_2_text, :feature_3_title, :feature_3_text, :feature_4_title, :feature_4_text, :section_1_title, :section_1_first_paragraph, :section_1_second_paragraph, :section_2_title, :section_2_first_paragraph, :section_2_second_paragraph, :section_3_title, :section_3_first_paragraph, :section_3_second_paragraph, :about_us_first_paragraph, :about_us_second_paragraph, :about_us_third_paragraph, :contact_us_paragraph, :about_us_1_title, :about_us_1_first_paragraph, :about_us_1_second_paragraph, :about_us_2_title, :about_us_2_first_paragraph, :about_us_2_second_paragraph, :about_us_3_title, :about_us_3_first_paragraph, :about_us_3_second_paragraph, :contact_us_paragraph, :faq_paragraph)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "You don't have access to this route"
      end
    end
end