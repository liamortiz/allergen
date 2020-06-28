class User < ApplicationRecord
  has_many :recipes
  has_many :ingredients, :through => :recipes

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
end
