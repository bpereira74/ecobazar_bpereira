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
class Seller < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :condition

  # Relaciones
  has_many :seller_conditions, dependent: :destroy
  has_many :conditions, through: :seller_conditions
end
