class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :kind
  validates :name, :how_to_do, :ingredients, presence: true
  accepts_nested_attributes_for :ingredients, :allow_destroy => true

  def format_duration
    duration.present? ? duration.strftime('%H:%M') : 'not defined'
  end
end
