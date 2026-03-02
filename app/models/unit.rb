class Unit < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  has_many :recipe_ingredients, dependent: :restrict_with_error
end
