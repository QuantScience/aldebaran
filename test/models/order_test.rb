# == Schema Information
#
# Table name: orders
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  product_id         :integer
#  shopping_time      :integer
#  customer_id        :string
#  trading_software   :integer
#  accepts_disclaimer :boolean
#  unique_code        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
