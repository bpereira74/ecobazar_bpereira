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
class Condition < ApplicationRecord
  # Relaciones
  has_many :seller_conditions, dependent: :destroy
  has_many :products, through: :seller_conditions
end
