# frozen_string_literal: true

class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :category_id
      t.integer :ingredient_id
      t.text :preparation

      t.timestamps
    end
  end
end
