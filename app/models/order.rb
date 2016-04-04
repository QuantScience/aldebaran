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
#  status             :integer
#

class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  before_create :generate_unique_code

  enum shopping_time: [ :"Six Months", :"One Year", :"Open Code"]
  enum trading_software: [ :"Tradestation", :"Multicharts", :"Open Code(.ELD , TXT)"]
  enum status: [ :"Awaiting Payment", :"Payment Confirmed", :"Delivered"]

  validates :trading_software, :customer_id, :accepts_disclaimer, presence: { message: "You must include all the fields"}

  def generate_unique_code
    begin
      self.unique_code = SecureRandom.hex(5).upcase
    end while self.class.exists?(unique_code: unique_code)
  end
end
