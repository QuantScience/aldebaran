# == Schema Information
#
# Table name: contents
#
#  id                             :integer          not null, primary key
#  slide_1_title                  :string
#  slide_1_subtitle               :string
#  slide_2_title                  :string
#  slide_2_subtitle               :string
#  slide_3_title                  :string
#  slide_3_subtitle               :string
#  carousel_link_1                :string
#  carousel_link_1_text           :string
#  carousel_link_2                :string
#  carousel_link_2_text           :string
#  carousel_link_3                :string
#  carousel_link_3_text           :string
#  feature_1_title                :string
#  feature_1_text                 :text
#  feature_2_title                :string
#  feature_2_text                 :text
#  feature_3_title                :string
#  feature_3_text                 :text
#  feature_4_title                :string
#  feature_4_text                 :text
#  section_1_title                :string
#  section_1_first_paragraph      :text
#  section_1_second_paragraph     :text
#  section_2_title                :string
#  section_2_first_paragraph      :text
#  section_2_second_paragraph     :text
#  section_3_title                :string
#  section_3_first_paragraph      :text
#  section_3_second_paragraph     :text
#  about_us_first_paragraph       :text
#  about_us_second_paragraph      :text
#  about_us_third_paragraph       :text
#  about_us_1_title               :string
#  about_us_1_first_paragraph     :text
#  about_us_1_second_paragraph    :text
#  about_us_2_title               :string
#  about_us_2_first_paragraph     :text
#  about_us_2_second_paragraph    :text
#  about_us_3_title               :string
#  about_us_3_first_paragraph     :text
#  about_us_3_second_paragraph    :text
#  contact_us_paragraph           :text
#  faq_paragraph                  :text
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  partnership_first_paragraph    :text
#  partnership_second_paragraph   :text
#  partnership_third_paragraph    :text
#  partnership_1_title            :string
#  partnership_1_first_paragraph  :text
#  partnership_1_second_paragraph :text
#  partnership_2_title            :string
#  partnership_2_first_paragraph  :text
#  partnership_2_second_paragraph :text
#  partnership_3_title            :string
#  partnership_3_first_paragraph  :text
#  partnership_3_second_paragraph :text
#

class Content < ActiveRecord::Base
  validates :slide_1_title, :slide_1_subtitle, :slide_2_title, :slide_2_subtitle, :slide_3_title, :slide_3_subtitle, :carousel_link_1, :carousel_link_1_text, :carousel_link_2, :carousel_link_2_text, :carousel_link_3, :carousel_link_3_text, :feature_1_title, :feature_1_text, :feature_2_title, :feature_2_text, :feature_3_title, :feature_3_text, :feature_4_title, :feature_4_text, :section_1_title, :section_1_first_paragraph, :section_1_second_paragraph, :section_2_title, :section_2_first_paragraph, :section_2_second_paragraph, :section_3_title, :section_3_first_paragraph, :section_3_second_paragraph, :about_us_first_paragraph, :about_us_second_paragraph, :about_us_third_paragraph, :contact_us_paragraph, :about_us_1_title, :about_us_1_first_paragraph, :about_us_1_second_paragraph, :about_us_2_title, :about_us_2_first_paragraph, :about_us_2_second_paragraph, :about_us_3_title, :about_us_3_first_paragraph, :about_us_3_second_paragraph, :contact_us_paragraph, :faq_paragraph, presence: { message: "You must include all the fields"}
end
