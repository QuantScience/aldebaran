# == Schema Information
#
# Table name: faq_items
#
#  id         :integer          not null, primary key
#  question   :text
#  answer     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FaqItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
