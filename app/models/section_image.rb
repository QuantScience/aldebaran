# == Schema Information
#
# Table name: section_images
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SectionImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image, styles: { section_size: "750x500#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :image
end
