class AddCoverpathToDrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :coverpath, :string
  end
end
