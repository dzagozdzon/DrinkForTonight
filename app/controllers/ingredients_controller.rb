# frozen_string_literal: true

class IngredientsController < ApplicationController
  def new
    @page_title = 'Add New Ingredient'
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      flash[:notice] = 'Ingredient Created'

      redirect_to ingredients_path
    else
      render 'new'
    end
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.update(ingredient_params)

    flash[:notice] = 'Ingredient Updated'

    redirect_to ingredient_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    flash[:notice] = 'Ingredient Removed'

    redirect_to ingredients_path
  end

  def index
    @ingredients = Ingredient.all
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end
end
