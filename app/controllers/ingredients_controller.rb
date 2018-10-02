class IngredientsController < ApplicationController
  def new
    @page_title = "Add New Ingredient"
    @ingredient = Ingredient.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
  end
end
