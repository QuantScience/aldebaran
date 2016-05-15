class AddPartnershipFieldsToContent < ActiveRecord::Migration
  def change
    add_column :contents, :partnership_first_paragraph, :text
    add_column :contents, :partnership_second_paragraph, :text
    add_column :contents, :partnership_third_paragraph, :text
    add_column :contents, :partnership_1_title, :string
    add_column :contents, :partnership_1_first_paragraph, :text
    add_column :contents, :partnership_1_second_paragraph, :text
    add_column :contents, :partnership_2_title, :string
    add_column :contents, :partnership_2_first_paragraph, :text
    add_column :contents, :partnership_2_second_paragraph, :text
    add_column :contents, :partnership_3_title, :string
    add_column :contents, :partnership_3_first_paragraph, :text
    add_column :contents, :partnership_3_second_paragraph, :text
  end
end