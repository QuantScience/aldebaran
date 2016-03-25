# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  product_id       :integer
#  shopping_time    :integer
#  customer_id      :string
#  trading_software :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  enum shopping_time: [ :"Six Months", :"One Year", :"Open Source"]
  enum trading_software: [ :"Trade Station", :"Multicharts"]

end
