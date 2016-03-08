# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  step_type  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Step < ActiveRecord::Base
  enum step_type: [:how_to_buy, :when_already_buy, :broker]
  validates :title, :content, :step_type, presence: { message: "You must include all the fields"}
end
