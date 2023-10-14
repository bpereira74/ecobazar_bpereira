class EcoProduct < ApplicationRecord
  belongs_to :user
  belongs_to :condition
  #Validaciones
  validates :name, presence: true, uniqueness: true
end
