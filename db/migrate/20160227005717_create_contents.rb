class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :slide_1_title
      t.string :slide_1_subtitle
      t.string :slide_2_title
      t.string :slide_2_subtitle
      t.string :slide_3_title
      t.string :slide_3_subtitle
      t.string :carousel_link_1
      t.string :carousel_link_1_text
      t.string :carousel_link_2
      t.string :carousel_link_2_text
      t.string :carousel_link_3
      t.string :carousel_link_3_text
      t.string :feature_1_title
      t.text :feature_1_text
      t.string :feature_2_title
      t.text :feature_2_text
      t.string :feature_3_title
      t.text :feature_3_text
      t.string :feature_4_title
      t.text :feature_4_text
      t.string :section_1_title
      t.text :section_1_first_paragraph
      t.text :section_1_second_paragraph
      t.string :section_2_title
      t.text :section_2_first_paragraph
      t.text :section_2_second_paragraph
      t.string :section_3_title
      t.text :section_3_first_paragraph
      t.text :section_3_second_paragraph
      t.text :about_us_first_paragraph
      t.text :about_us_second_paragraph
      t.text :about_us_third_paragraph
      t.string :about_us_1_title
      t.text :about_us_1_first_paragraph
      t.text :about_us_1_second_paragraph
      t.string :about_us_2_title
      t.text :about_us_2_first_paragraph
      t.text :about_us_2_second_paragraph
      t.string :about_us_3_title
      t.text :about_us_3_first_paragraph
      t.text :about_us_3_second_paragraph
      t.text :contact_us_paragraph
      t.text :faq_paragraph

      t.timestamps null: false
    end
  end
end
