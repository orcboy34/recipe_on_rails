class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  has_and_belongs_to_many :tags
end
