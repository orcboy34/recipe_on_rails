class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  
  has_many :recipe_tags, dependent: :destroy
  has_many :tags, through: :recipe_tags
end
