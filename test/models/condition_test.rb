# == Schema Information
#
# Table name: conditions
#
#  id         :bigint           not null, primary key
#  name       :string
#  available  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ConditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
