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
#  more_info_link      :text
#  logo_file_name      :string
#  logo_content_type   :string
#  logo_file_size      :integer
#  logo_updated_at     :datetime
#

class Product < ActiveRecord::Base
  has_attached_file :logo, styles: { my_store: "210x210#", medium: "300x300>", thumb: "150x150#", mini_thumb: "75x75#", product_show: "478x478#", big_product_show: "682x353#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :logo

  has_many :product_images, dependent: :destroy
  has_many :section_images, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders

  accepts_nested_attributes_for :product_images, :limit => 3, :reject_if => :all_blank, allow_destroy: true
  accepts_nested_attributes_for :section_images, :limit => 4, :reject_if => :all_blank, allow_destroy: true

  enum product_type: [:strategy, :indicator, :portfolio, :education]

  validates_associated :product_images
  validates_associated :section_images
  validates :title, :resume, :product_type, :logo, :subtitle, :price, :price_one_year, :price_open_source, :specifications, :section_title, :pay_pal_button, :section_paragraph_1, :section_paragraph_2, :quality_1, :quality_2, :quality_3, :quality_4, presence: { message: "You must include all the fields"}, :if => :not_education?

  validates :title, :resume, :product_type, :logo, :subtitle, :price, :price_one_year, :price_open_source, :specifications, :pay_pal_button, presence: { message: "You must include all the fields"}, :if => :is_education?

  validates :resume, length: { maximum: 120,
    too_long: "%{count} characters is the maximum allowed for resume field" }
  validate :require_three_product_images
  validate :require_four_section_images, :if => :not_education?

  def not_education?
    product_type != "education"
  end

  def is_education?
    product_type == "education"
  end

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
