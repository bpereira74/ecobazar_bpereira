# == Schema Information
#
# Table name: sellers
#
#  id           :bigint           not null, primary key
#  user_id      :bigint           not null
#  product_id   :bigint           not null
#  condition_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class SellerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
