class DrinksIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :drink
end
