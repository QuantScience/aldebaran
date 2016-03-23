# == Schema Information
#
# Table name: product_images
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  product_id         :integer
#

class ProductImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150#", mini_thumb: "75x75#", product_show: "478x247#", big_product_show: "682x353#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :image
end
