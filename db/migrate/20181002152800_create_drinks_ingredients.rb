class CreateDrinksIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :drink, foreign_key: true

      t.timestamps
    end
  end
end
