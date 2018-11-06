# frozen_string_literal: true

class AddUserIdToDrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :user_id, :integer
  end
end
