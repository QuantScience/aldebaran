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

class Product < ActiveRecord::Base
  has_many :product_images
  has_many :section_images

  accepts_nested_attributes_for :product_images, :limit => 3, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :section_images, :limit => 4, :reject_if => :all_blank, allow_destroy: true


  enum product_type: [:strategy, :indicator, :portfolio]

  validates_associated :product_images
  validates_associated :section_images
  validates :title, :resume, :product_type, :subtitle, :price, :price_one_year, :price_open_source, :specifications, :section_title, :section_paragraph_1, :section_paragraph_2, :quality_1, :quality_2, :quality_3, :quality_4, presence: { message: "You must include all the fields"}
  validates :resume, length: { maximum: 120,
    too_long: "%{count} characters is the maximum allowed for resume field" }
  validate :require_three_product_images
  validate :require_four_section_images

  private
    def require_three_product_images
      i = 0
      product_images.each do |image|
        i += 1
      end
      errors.add(:base, "You must add three product images") if i < 3
    end

    def require_four_section_images
      i = 0
      section_images.each do |image|
        i += 1
      end
      errors.add(:base, "You must add four section images") if i < 4
    end
end
