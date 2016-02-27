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
      t.string :feature_1_text
      t.string :feature_2_title
      t.string :feature_2_text
      t.string :feature_3_title
      t.string :feature_3_text
      t.string :feature_4_title
      t.string :feature_4_text
      t.string :section_1_title
      t.string :section_1_first_paragraph
      t.string :section_1_second_paragraph
      t.string :section_2_title
      t.string :section_2_first_paragraph
      t.string :section_2_second_paragraph
      t.string :section_3_title
      t.string :section_3_first_paragraph
      t.string :section_3_second_paragraph

      t.timestamps null: false
    end
  end
end
