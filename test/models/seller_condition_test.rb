# == Schema Information
#
# Table name: seller_conditions
#
#  id           :bigint           not null, primary key
#  seller_id    :bigint           not null
#  condition_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class SellerConditionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
