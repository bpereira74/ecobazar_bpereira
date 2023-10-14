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
class Product < ApplicationRecord
  belongs_to :condition

  # Validaciones
  # Validaciones
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
