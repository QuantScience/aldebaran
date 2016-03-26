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

require 'test_helper'

class SectionImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
