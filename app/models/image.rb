# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  location           :string
#  image_type         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  title              :string
#  caption            :text
#

class Image < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  enum step_type: [:carousel_1, :section, :carousel_2]
end
