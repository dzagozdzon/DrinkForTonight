# frozen_string_literal: true

class DrinksController < ApplicationController
  def new
    @page_title = 'Add Drink'
    @drink = Drink.new
    @category = Category.new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      @drink.ingredients << Ingredient.where(id: params[:id])

      flash[:notice] = 'Drink Created'

      redirect_to drinks_path
    else
      render 'new'
    end
  end

  def update; end

  def edit; end

  def destroy; end

  def index
    @drinks = Drink.all
  end

  def show
  end

  private

  def drink_params
    params.require(:drink).permit!
  end

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end
end
