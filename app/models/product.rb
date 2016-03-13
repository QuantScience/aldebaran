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
#

class Product < ActiveRecord::Base
  enum product_type: [:strategy, :indicator, :portfolio]

  validates :title, :resume, :product_type, :subtitle, :price, :specifications, :section_title, :section_paragraph_1, :section_paragraph_2, :quality_1, :quality_2, :quality_3, :quality_4, presence: { message: "You must include all the fields"}

  validates :resume, length: { maximum: 120,
    too_long: "%{count} characters is the maximum allowed for resume field" }
end