# frozen_string_literal: true

class DrinksController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def new
    @page_title = 'Add Drink'
    @drink = current_user.drinks.build
    @ingredients = Ingredient.all

    # @category = current_user.categories.build
    # @ingredient = current_user.ingredients.build
  end

  def create
    @drink = current_user.drinks.build(drink_params)
    if @drink.save
      @drink.ingredients << Ingredient.where(id: params[:id])

      flash[:notice] = 'Drink Created'

      redirect_to drinks_path
    else
      render 'new'
    end
  end

  def update
    @drink = current_user.drinks.find(params[:id])

    @drink.update(drink_params)

    flash[:notice] = 'Drink Updated'

    redirect_to drinks_path
  end

  def edit
    @drink = current_user.drinks.find(params[:id])
  end

  def destroy
    @drink = current_user.drinks.find(params[:id])

    @drink.destroy

    flash[:notice] = 'Drink Removed'

    redirect_to drinks_path
  end

  def index
    @drinks = Drink.all
    @categories = Category.all
  end

  def show
    @drink = Drink.find(params[:id])
    @categories = Category.all
    @ingredients = Ingredient.all
  end

  def find_drink
    @drink = Drink.new
    @ingredients = Ingredient.all
  end

  def match_drinks
    params_ingredient_ids = drink_params['ingredient_ids']
    @drinks = Drink.select do |drink|
      (drink.ingredient_ids & params_ingredient_ids.map(&:to_i)).any?
    end
    # @sorted_drinks = @drinks.sort { |drink| (drink.ingredient_ids & params_ingredient_ids.map(&:to_i)).length }
    @categories = Category.all
  end

  private

  def drink_params
    params.require(:drink).permit!
  end

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end
end
