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

class FaqItem < ActiveRecord::Base
  validates :question, :answer, presence: { message: "You must include all the fields"}
end
