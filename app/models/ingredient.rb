class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, length: { minimum: 3, maximum: 10 }
end
