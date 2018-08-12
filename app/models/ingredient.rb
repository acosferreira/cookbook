class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :name, :measurement,  presence: true
end
