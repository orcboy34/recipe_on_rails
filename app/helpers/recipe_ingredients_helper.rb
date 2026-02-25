module RecipeIngredientsHelper
  FRACTION_MAP = {
    0.125 => "⅛",
    0.25  => "¼",
    0.333 => "⅓",
    0.375 => "⅜",
    0.5   => "½",
    0.625 => "⅝",
    0.666 => "⅔",
    0.75  => "¾",
    0.875 => "⅞"
  }.freeze

  def formatIngredient(recipe_ingredient)
    whole_amount = recipe_ingredient.amount.to_i
    fractional_amount = (recipe_ingredient.amount - whole_amount).round(3)

    fraction_char = FRACTION_MAP[fractional_amount]

    if fraction_char
      "#{whole_amount > 0 ? whole_amount : ''}#{fraction_char} #{recipe_ingredient.unit.abbreviation}#{recipe_ingredient.amount > 1 ? 's' : '' } #{recipe_ingredient.ingredient.name}".strip
    else
      "#{pluralize(whole_amount, recipe_ingredient.unit.abbreviation)} #{recipe_ingredient.ingredient.name}"
    end
  end
end
