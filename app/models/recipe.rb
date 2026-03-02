class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :recipe_ingredients, dependent: :destroy
end
