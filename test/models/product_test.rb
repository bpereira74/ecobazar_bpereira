# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  name         :string
#  description  :text
#  condition_id :bigint           not null
#  price        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
