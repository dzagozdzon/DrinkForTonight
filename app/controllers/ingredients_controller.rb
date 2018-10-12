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

  def update; end

  def edit; end

  def destroy; end

  def index; end

  def show; end

  private

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end
end
