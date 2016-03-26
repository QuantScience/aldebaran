# == Schema Information
#
# Table name: section_images
#
#  id                 :integer          not null, primary key
#  product_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class SectionImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image, styles: { section_size: "750x500#", thumb: "150x150#", mini_thumb: "75x75#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :image
end
