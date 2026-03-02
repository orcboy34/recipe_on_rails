class AddNameIndexToRecipe < ActiveRecord::Migration[8.1]
  def change
    add_index :recipes, "lower(name)", name: "index_recipes_on_lower_name", unique: true
  end
end
