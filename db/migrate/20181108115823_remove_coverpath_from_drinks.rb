# frozen_string_literal: true

class RemoveCoverpathFromDrinks < ActiveRecord::Migration[5.2]
  def change
    remove_column :drinks, :coverpath, :string
  end
end
