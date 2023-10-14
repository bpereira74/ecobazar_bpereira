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
class SellerCondition < ApplicationRecord
  belongs_to :seller
  belongs_to :condition
  # Validaciones
  validates :seller, :condition, presence: true
end
