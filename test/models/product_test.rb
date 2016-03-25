# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  title               :string
#  resume              :text
#  product_type        :integer
#  subtitle            :text
#  price               :integer
#  specifications      :text
#  section_title       :string
#  section_paragraph_1 :text
#  section_paragraph_2 :text
#  quality_1           :integer
#  quality_2           :integer
#  quality_3           :integer
#  quality_4           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  price_one_year      :integer
#  price_open_source   :integer
#  pay_pal_button      :text
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
