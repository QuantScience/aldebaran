# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ActiveRecord::Base
  has_attached_file :images, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :images, content_type: /\Aimage\/.*\Z/
end
