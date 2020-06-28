class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  # Validations using defaults
  validates :name, length: { minimum: 3, maximum: 40 }
  
end
